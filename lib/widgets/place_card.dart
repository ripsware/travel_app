import 'package:flutter/material.dart';
import 'package:travel_app/widgets/ratting_bar.dart';

class PlaceCard extends StatelessWidget {

  PlaceCard({
    this.imageUrl,
    this.name,
    this.description,
    this.ratting,
    this.onTap,
    this.splashColor,
    this.highlightColor,
  });

  final String imageUrl;
  final String name;
  final String description;
  final double ratting;
  final VoidCallback onTap;
  final Color highlightColor;
  final Color splashColor;

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(
      horizontal: 16
    ),
    child: Material(
      elevation: 6,
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
          width: 240,
          height: 240,
          child: Stack(
            children: <Widget>[
              Image.network(imageUrl),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8
                  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          value: ratting,
                          color: Color(0xFFF09742),
                        ),
                      )
                    ],
                  ),
                ),
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
