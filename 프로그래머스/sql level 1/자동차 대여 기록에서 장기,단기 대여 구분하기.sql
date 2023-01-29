SELECT  HISTORY_ID, CAR_ID, date_format(START_DATE,'%Y-%m-%d') START_DATE, date_format(END_DATE,'%Y-%m-%d') END_DATE,
        case when datediff(END_DATE, START_DATE)+1 >= 30
            then '장기 대여'
            else '단기 대여'
            end RENT_TYPE
  from CAR_RENTAL_COMPANY_RENTAL_HISTORY
  where date_format(START_DATE,'%Y-%m') = '2022-09'
  order by HISTORY_ID desc;