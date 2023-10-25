import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/utils/extensions.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/core/widgets/big_radio_buttons_block.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/get_a_quote/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/reservation/passenger_info.dart';

class StartForm extends StatefulWidget {
  final Car vehicle;
  const StartForm({super.key, required this.vehicle});

  @override
  State<StartForm> createState() => _StartFormState();
}

class _StartFormState extends State<StartForm>
    with AutomaticKeepAliveClientMixin {
  static final _getAQuoteFormKey = GlobalKey<FormBuilderState>();
  static final _reservationFormKey = GlobalKey<FormBuilderState>();
  int value = 1;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(
          onTap: context.pop,
        ),
        bottom: PreferredSize(
          preferredSize: Size(context.width, 76),
          child: BigRadioButtonsBlock(
            items: const [
              'Reserve now',
              'Get a quote',
            ],
            onChoosed: (value) {
              setState(() {
                this.value = value;
              });
            },
            value: value,
            firstIcons: (
              Assets.icons.radioEnable.svg(),
              Assets.icons.radioDisable.svg(),
            ),
            secondIcons: (
              Assets.icons.radioEnable.svg(),
              Assets.icons.radioDisable.svg(),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Passenger information',
              style: context.theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 32),
            if (value == 0)
              ReservationPassengerInfo(
                vehicle: widget.vehicle,
                formKey: _reservationFormKey,
              )
            else
              GetAQuotePassengerInfo(
                vehicle: widget.vehicle,
                formKey: _getAQuoteFormKey,
              ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
