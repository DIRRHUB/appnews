import 'package:appnews/shared/constants/date_constants.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class OneMonthCalendar<T> extends StatelessWidget {
  const OneMonthCalendar({
    super.key,
    required this.focusedDate,
    required this.onDaySelected,
    this.rowHeight,
    this.padding,
    this.backgroundColor,
    this.onlyFutureDates = true,
    this.eventBuilder,
  });
  final DateTime? focusedDate;
  final Function(DateTime value) onDaySelected;
  final double? rowHeight;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool onlyFutureDates;
  final Widget? Function(BuildContext context, DateTime day, T event)? eventBuilder;

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final theme = Theme.of(context);
    final TextStyle disabledDateTextStyle =
        theme.primaryTextTheme.bodyMedium?.copyWith(color: theme.colorScheme.surfaceVariant) ?? const TextStyle();
    const BoxDecoration decoration = BoxDecoration(
      shape: BoxShape.circle,
    );
    return Container(
      width: SizeConstants.smallCalendarWidth,
      padding: padding ?? const EdgeInsets.all(PaddingConstants.medium),
      decoration: BoxDecoration(
        color: backgroundColor ?? theme.cardColor,
        borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
        border: Border.all(color: theme.colorScheme.surfaceVariant, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat(DateConstants.mmmy).format(focusedDate ?? now),
                style: theme.textTheme.bodyLarge,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      onDaySelected(getPreviousMonth(focusedDate ?? now, now));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: DimensionConstants.iconExtraSmall,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(width: PaddingConstants.extraLarge),
                  InkWell(
                    onTap: () {
                      onDaySelected(getNextMonth(focusedDate ?? now, now));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: DimensionConstants.iconExtraSmall,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: PaddingConstants.normal),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: TableCalendar<T>(
              startingDayOfWeek: StartingDayOfWeek.monday,
              firstDay: onlyFutureDates
                  ? focusedDate != null && focusedDate!.isBefore(now)
                      ? now.subtract(const Duration(days: 1))
                      : now
                  : now.copyWith(year: now.year - 10),
              lastDay: now.copyWith(year: now.year + 10),
              focusedDay: focusedDate ?? now,
              currentDay: focusedDate,
              daysOfWeekHeight: 20,
              onDaySelected: (value, _) {
                //prevent choosing past dates
                final DateTime nowStart = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
                final bool isPastDate = value.isBefore(nowStart);
                if (onlyFutureDates && isPastDate) {
                  return;
                }
                onDaySelected(value);
              },
              rowHeight: 40,
              headerVisible: false,
              daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, locale) => DateFormat(DateConstants.e).format(date)[0],
                weekdayStyle: theme.textTheme.labelLarge ?? const TextStyle(),
                weekendStyle: theme.textTheme.labelLarge ?? const TextStyle(),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: decoration.copyWith(
                  border: Border.all(width: 1, color: theme.colorScheme.secondary),
                ),
                markerDecoration: decoration.copyWith(
                  border: Border.all(width: 1, color: theme.colorScheme.secondary),
                ),
                selectedDecoration: decoration.copyWith(
                  border: Border.all(width: 1, color: theme.colorScheme.secondary),
                ),
                holidayDecoration: decoration,
                disabledDecoration: decoration,
                weekendDecoration: decoration,
                withinRangeDecoration: decoration,
                defaultDecoration: decoration,
                rangeStartDecoration: decoration,
                rangeEndDecoration: decoration,
                rowDecoration: decoration,
                outsideDecoration: decoration,
                cellMargin: EdgeInsets.zero,
                weekendTextStyle: disabledDateTextStyle.copyWith(color: theme.colorScheme.onSurface),
                disabledTextStyle: disabledDateTextStyle.copyWith(color: theme.colorScheme.onSurface),
                defaultTextStyle: disabledDateTextStyle.copyWith(color: theme.colorScheme.onSurface),
                rangeStartTextStyle: disabledDateTextStyle,
                todayTextStyle: theme.primaryTextTheme.bodyMedium?.copyWith(color: theme.colorScheme.secondary) ??
                    const TextStyle(),
                outsideTextStyle: disabledDateTextStyle.copyWith(color: theme.colorScheme.onSurface),
                selectedTextStyle: theme.primaryTextTheme.bodyMedium?.copyWith(color: theme.colorScheme.secondary) ??
                    const TextStyle(),
                tablePadding: EdgeInsets.zero,
                cellPadding: EdgeInsets.zero,
                markerSize: PaddingConstants.extraSmall,
                markersOffset: const PositionedOffset(),
                markersAutoAligned: true,
                canMarkersOverflow: false,
                markersAnchor: 2.5, //bottom padding in a cell
              ),
              calendarBuilders: CalendarBuilders<T>(
                singleMarkerBuilder: (context, day, list) {
                  if (eventBuilder == null) {
                    return Container(
                      height: 3,
                      width: 3,
                      margin: const EdgeInsets.all(0.5),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: theme.colorScheme.secondary),
                    );
                  } else {
                    return eventBuilder!(context, day, list);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  DateTime getNextMonth(DateTime date, DateTime now) {
    final DateTime nextMonthDate = DateTime(date.year, date.month + 1, 1);
    if (nextMonthDate.isAfter(now.copyWith(year: now.year + 1))) {
      return date;
    } else {
      return nextMonthDate;
    }
  }

  DateTime getPreviousMonth(DateTime date, DateTime now) {
    final DateTime previousMonthDate = date.subtract(Duration(days: date.day));
    if (onlyFutureDates) {
      if (previousMonthDate.isBefore(now)) {
        return now;
      } else {
        return previousMonthDate;
      }
    } else {
      if (previousMonthDate.isBefore(now.copyWith(year: now.year - 1))) {
        return date;
      } else {
        return previousMonthDate;
      }
    }
  }
}
