import 'package:flutter/material.dart';
import 'package:travel_app/widgets/ratting_bar.dart';

class HorizontalPlaceCard extends StatelessWidget {

  HorizontalPlaceCard({
    this.imageUrl,
    this.name,
    this.price,
    this.priceDescription,
    this.description,
    this.ratting,
    this.onTap,
    this.splashColor,
    this.highlightColor,
  });

  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final String priceDescription;
  final double ratting;
  final VoidCallback onTap;
  final Color highlightColor;
  final Color splashColor;

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.all(16),
    child: Material(
      elevation: 8,
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: Container(
        height: 128,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    child: Image.network(imageUrl,
                      fit: BoxFit.cover,
                    ),
                    width: 128,
                    height: 128,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(name,
                            style: Theme.of(context).textTheme.display2.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                height: 1.4
                            ),
                          ),
                          Text(description,
                            style: Theme.of(context).textTheme.body2.copyWith(
                                height: 1.4
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8
                            ),
                            child: RattingBar(
                              value: 4,
                              color: Color(0xFFF09742),
                            ),
                          ),
                          Text("\$${price??0} - ${priceDescription ?? ''}",
                            style: Theme.of(context).textTheme.display2.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  highlightColor: highlightColor ?? Color(0x33FFFFFF),
                  splashColor: splashColor ?? Color(0x77FFFFFF),
                  onTap: onTap,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
