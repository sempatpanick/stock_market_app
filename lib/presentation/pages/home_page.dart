import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_market_app/common/state_enum.dart';
import 'package:stock_market_app/presentation/provider/quote_notifier.dart';

import '../../common/utils.dart';
import '../widgets/item_category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    Future.microtask(() => Provider.of<QuoteNotifier>(context, listen: false)..getStocks());

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      Provider.of<QuoteNotifier>(context, listen: false).setStatusRealtime(false);
    }
    if (state == AppLifecycleState.resumed) {
      Provider.of<QuoteNotifier>(context, listen: false).setStatusRealtime(true);
    }

    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stock Market"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Consumer<QuoteNotifier>(builder: (context, data, _) {
              int indexCategory = data.categoryIndex;
              // data.getStocks(indexCategory);

              return SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: data.category.length,
                  itemBuilder: (context, index) {
                    Color colorBackground = indexCategory == index ? Colors.red : Colors.grey[100]!;
                    Color colorText = indexCategory == index ? Colors.white : Colors.black;

                    return ItemCategoryWidget(
                      name: data.category[index],
                      colorBackground: colorBackground,
                      colorText: colorText,
                      onTap: () async {
                        if (data.setCategoryIndex(index)) {
                          // animateListController
                          //     .reverse()
                          //     .whenComplete(() => animateListController.forward());
                        }
                      },
                    );
                  },
                ),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Consumer<QuoteNotifier>(builder: (context, data, _) {
              var state = data.state;

              if (state == RequestState.empty) {
                return const Center(
                  child: Text("Data is empty"),
                );
              }
              if (state == RequestState.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state == RequestState.error) {
                return Center(
                  child: Text(data.message),
                );
              }
              if (state == RequestState.loaded) {
                var quotes = data.quotes;

                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: quotes.length,
                  itemBuilder: (context, index) {
                    var quote = quotes[index];
                    String price = '';
                    String changePrice = '';
                    String symbol = '';
                    if (quote.currency == 'USD') {
                      price = '\$${numberConvert(quote.regularMarketPrice ?? 0, 'en')}';
                      changePrice = numberConvert(quote.regularMarketChange ?? 0, 'en');
                      symbol = quote.symbol;
                    } else if (quote.currency == 'IDR') {
                      symbol = quote.symbol.split('.').first;
                      price = 'Rp. ${numberConvert(quote.regularMarketPrice ?? 0, 'id')}';
                      changePrice = numberConvert(quote.regularMarketChange ?? 0, 'id');
                    }

                    return ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${index + 1}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          if (quote.currency == 'IDR')
                            CachedNetworkImage(
                              imageUrl: "https://assets.stockbit.com/logos/companies/$symbol.png",
                              width: 110,
                              height: 110,
                              progressIndicatorBuilder: (context, url, downloadProgress) => Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircularProgressIndicator(
                                    value: downloadProgress.progress,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                        ],
                      ),
                      title: Text(symbol),
                      subtitle: Text(quote.longName ?? quote.shortName ?? ""),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            price,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "$changePrice (${quote.regularMarketChangePercent?.toStringAsFixed(2) ?? 0}%)",
                            style: TextStyle(
                                fontSize: 14,
                                color: quote.regularMarketChange != null &&
                                        !quote.regularMarketChange!.isNegative
                                    ? Colors.green
                                    : Colors.red),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }

              return const Center(
                child: Text("Unknown error"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
