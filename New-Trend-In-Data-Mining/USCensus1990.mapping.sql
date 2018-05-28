create function discAge( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <13
     SET @ret = 1
  ELSE IF @value <20
     SET @ret = 2
  ELSE IF @value <30
     SET @ret = 3
  ELSE IF @value <40
     SET @ret = 4
  ELSE IF @value <50
     SET @ret = 5
  ELSE IF @value <65
     SET @ret = 6
  ELSE
     SET @ret = 7
RETURN(@ret)
END

create function discDepart( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <600
     SET @ret = 1
  ELSE IF @value <700
     SET @ret = 2
  ELSE IF @value <800
     SET @ret = 3
  ELSE IF @value <1000
     SET @ret = 4
  ELSE
     SET @ret = 5
RETURN(@ret)
END

create function discHour89( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <30
     SET @ret = 1
  ELSE IF @value <40
     SET @ret = 2
  ELSE IF @value <41
     SET @ret = 3
  ELSE IF @value <50
     SET @ret = 4
  ELSE
     SET @ret = 5
RETURN(@ret)
END

create function discHours( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <30
     SET @ret = 1
  ELSE IF @value <40
     SET @ret = 2
  ELSE IF @value <41
     SET @ret = 3
  ELSE IF @value <50
     SET @ret = 4
  ELSE
     SET @ret = 5
RETURN(@ret)
END

create function discIncome1( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <15000
     SET @ret = 1
  ELSE IF @value <30000
     SET @ret = 2
  ELSE IF @value <60000
     SET @ret = 3
  ELSE
     SET @ret = 4
RETURN(@ret)
END


create function discIncome2to8( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE
     SET @ret = 1
RETURN(@ret)
END

create function discPoverty( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0 
     SET @ret = 0
  ELSE IF @value <100
     SET @ret = 1
  ELSE
     SET @ret = 2
RETURN(@ret)
END


create function discPWGT1( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value < 50
     SET @ret = 0
  ELSE IF @value <125
     SET @ret = 1
  ELSE IF @value <200
     SET @ret = 2
  ELSE
     SET @ret = 3
RETURN(@ret)
END

create function discRearning( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <0
     SET @ret = 1
  ELSE IF @value <15000
     SET @ret = 2
  ELSE IF @value <30000
     SET @ret = 3
  ELSE IF @value <60000
     SET @ret = 4
  ELSE
     SET @ret = 5
RETURN(@ret)
END


create function discTravtime( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <10
     SET @ret = 1
  ELSE IF @value <15
     SET @ret = 2
  ELSE IF @value <20
     SET @ret = 3
  ELSE IF @value <30
     SET @ret = 4
  ELSE IF @value <60
     SET @ret = 5
  ELSE
     SET @ret = 6
RETURN(@ret)
END

create function discWeek89( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value < 52
     SET @ret = 1
  ELSE
     SET @ret = 2
RETURN(@ret)
END

create function discYrsserv( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <5
     SET @ret = 1
  ELSE
     SET @ret = 2
RETURN(@ret)
END



create function discAncstry1( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 999
     SET @ret = 0
  ELSE IF @value <100
     SET @ret = 1
  ELSE IF @value <200
     SET @ret = 2
  ELSE IF @value <300
     SET @ret = 3
  ELSE IF @value <360
     SET @ret = 4
  ELSE IF @value <400
     SET @ret = 5
  ELSE IF @value <500
     SET @ret = 6
  ELSE IF @value <600
     SET @ret = 7
  ELSE IF @value <700
     SET @ret = 8
  ELSE IF @value <800
     SET @ret = 9
  ELSE IF @value <900
     SET @ret = 10
  ELSE
     SET @ret = 11
RETURN(@ret)
END


create function discAncstry2( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value = 999
     SET @ret = 1
  ELSE IF @value <100
     SET @ret = 2
  ELSE IF @value <200
     SET @ret = 3
  ELSE IF @value <300
     SET @ret = 4
  ELSE IF @value <360
     SET @ret = 5
  ELSE IF @value <400
     SET @ret = 6
  ELSE IF @value <500
     SET @ret = 7
  ELSE IF @value <600
     SET @ret = 8
  ELSE IF @value <700
     SET @ret = 9
  ELSE IF @value <800
     SET @ret = 10
  ELSE IF @value <900
     SET @ret = 11
  ELSE
     SET @ret = 12
RETURN(@ret)
END


create function discIndustry( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <40
     SET @ret = 1
  ELSE IF @value <60
     SET @ret = 2
  ELSE IF @value <100
     SET @ret = 3
  ELSE IF @value <400
     SET @ret = 4
  ELSE IF @value <500
     SET @ret = 5
  ELSE IF @value <580
     SET @ret = 6
  ELSE IF @value <700
     SET @ret = 7
  ELSE IF @value <800
     SET @ret = 8
  ELSE IF @value <900
     SET @ret = 9
  ELSE IF @value <940
     SET @ret = 10
  ELSE IF @value <992
     SET @ret = 11
  ELSE
     SET @ret = 12
RETURN(@ret)
END


create function discOccup( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <203
     SET @ret = 1
  ELSE IF @value <403
     SET @ret = 2
  ELSE IF @value <473
     SET @ret = 3
  ELSE IF @value <503
     SET @ret = 4
  ELSE IF @value <703
     SET @ret = 5
  ELSE IF @value <903
     SET @ret = 6
  ELSE IF @value <909
     SET @ret = 7
  ELSE
     SET @ret = 8
RETURN(@ret)
END



create function discRpincome( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value <0
     SET @ret = 1
  ELSE IF @value <15000
     SET @ret = 2
  ELSE IF @value <30000
     SET @ret = 3
  ELSE IF @value <60000
     SET @ret = 4
  ELSE
     SET @ret = 5
RETURN(@ret)
END

create function discPOB( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value <60
     SET @ret = 0
  ELSE IF @value <100
     SET @ret = 1
  ELSE IF @value <200
     SET @ret = 2
  ELSE IF @value <300
     SET @ret = 3
  ELSE IF @value <400
     SET @ret = 4
  ELSE IF @value <500
     SET @ret = 5
  ELSE
     SET @ret = 6
RETURN(@ret)
END

create function discHispanic( @arg varchar(255) )
RETURNS int
AS
BEGIN
  DECLARE @value bigint
  DECLARE @ret int
  SET @value = @arg

  IF @value = 0
     SET @ret = 0
  ELSE IF @value = 1
     SET @ret = 0
  ELSE IF @value = 2
     SET @ret = 2
  ELSE IF @value = 3
     SET @ret = 6
  ELSE IF @value = 4
     SET @ret = 7
  ELSE IF @value = 5
     SET @ret = 9
  ELSE IF @value <200
     SET @ret = 0
  ELSE IF @value <210
     SET @ret = 1
  ELSE IF @value <221
     SET @ret = 2
  ELSE IF @value <231
     SET @ret = 3
  ELSE IF @value <250
     SET @ret = 4
  ELSE IF @value <261
     SET @ret = 5
  ELSE IF @value <271
     SET @ret = 6
  ELSE IF @value <275
     SET @ret = 7
  ELSE IF @value <290
     SET @ret = 8
  ELSE
     SET @ret = 9
RETURN(@ret)
END
