.class public Lgnu/xquery/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field static final currentDateTimeLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/math/DateTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 310
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "time"    # Ljava/lang/Object;

    .prologue
    .line 230
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "time"    # Ljava/lang/Object;
    .param p1, "zone"    # Ljava/lang/Object;

    .prologue
    .line 235
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_6

    if-nez p0, :cond_7

    .line 238
    .end local p0    # "time":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .line 237
    .restart local p0    # "time":Ljava/lang/Object;
    :cond_7
    const-string v1, "adjust-dateTime-to-timezone"

    invoke-static {v1, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 238
    .local v0, "dtime":Lgnu/math/DateTime;
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6
.end method

.method static adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "dtime"    # Lgnu/math/DateTime;
    .param p1, "zone"    # Ljava/lang/Object;

    .prologue
    .line 269
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v2, :cond_6

    if-nez p1, :cond_b

    .line 270
    :cond_6
    invoke-virtual {p0}, Lgnu/math/DateTime;->withZoneUnspecified()Lgnu/math/DateTime;

    move-result-object v2

    .line 277
    :goto_a
    return-object v2

    :cond_b
    move-object v0, p1

    .line 271
    check-cast v0, Lgnu/math/Duration;

    .line 272
    .local v0, "d":Lgnu/math/Duration;
    invoke-virtual {v0}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v0}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v2

    if-eqz v2, :cond_22

    .line 273
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timezone offset with fractional minute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_22
    invoke-virtual {v0}, Lgnu/math/Duration;->getTotalMinutes()J

    move-result-wide v2

    long-to-int v1, v2

    .line 275
    .local v1, "delta":I
    const/16 v2, -0x348

    if-lt v1, v2, :cond_2f

    const/16 v2, 0x348

    if-le v1, v2, :cond_37

    .line 276
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timezone offset out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_37
    invoke-virtual {p0, v1}, Lgnu/math/DateTime;->adjustTimezone(I)Lgnu/math/DateTime;

    move-result-object v2

    goto :goto_a
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "time"    # Ljava/lang/Object;

    .prologue
    .line 243
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "time"    # Ljava/lang/Object;
    .param p1, "zone"    # Ljava/lang/Object;

    .prologue
    .line 248
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_6

    if-nez p0, :cond_7

    .line 251
    .end local p0    # "time":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .line 250
    .restart local p0    # "time":Ljava/lang/Object;
    :cond_7
    const-string v1, "adjust-date-to-timezone"

    invoke-static {v1, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 251
    .local v0, "dtime":Lgnu/math/DateTime;
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "time"    # Ljava/lang/Object;

    .prologue
    .line 256
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "time"    # Ljava/lang/Object;
    .param p1, "zone"    # Ljava/lang/Object;

    .prologue
    .line 261
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_6

    if-nez p0, :cond_7

    .line 264
    .end local p0    # "time":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .line 263
    .restart local p0    # "time":Ljava/lang/Object;
    :cond_7
    const-string v1, "adjust-time-to-timezone"

    invoke-static {v1, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 264
    .local v0, "dtime":Lgnu/math/DateTime;
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6
.end method

.method static asInteger(I)Lgnu/math/IntNum;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 59
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method static coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .registers 5
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 25
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    check-cast p1, Lgnu/math/DateTime;

    .line 28
    .end local p1    # "value":Ljava/lang/Object;
    :goto_a
    return-object p1

    .line 27
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_13

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1e

    .line 28
    :cond_13
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p1

    goto :goto_a

    .line 30
    :cond_1e
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:date"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method static coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .registers 5
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 15
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    check-cast p1, Lgnu/math/DateTime;

    .line 18
    .end local p1    # "value":Ljava/lang/Object;
    :goto_a
    return-object p1

    .line 17
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_13

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1e

    .line 18
    :cond_13
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p1

    goto :goto_a

    .line 20
    :cond_1e
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:dateTime"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method static coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;
    .registers 5
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 45
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_7

    .line 46
    check-cast p1, Lgnu/math/Duration;

    .end local p1    # "value":Ljava/lang/Object;
    return-object p1

    .line 47
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:duration"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method static coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .registers 5
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 35
    sget-object v0, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    check-cast p1, Lgnu/math/DateTime;

    .line 38
    .end local p1    # "value":Ljava/lang/Object;
    :goto_a
    return-object p1

    .line 37
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_13

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1e

    .line 38
    :cond_13
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p1

    goto :goto_a

    .line 40
    :cond_1e
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:time"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static currentDate()Lgnu/math/DateTime;
    .registers 2

    .prologue
    .line 341
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static currentDateTime()Lgnu/math/DateTime;
    .registers 2

    .prologue
    .line 322
    sget-object v1, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/DateTime;

    .line 323
    .local v0, "current":Lgnu/math/DateTime;
    if-nez v0, :cond_13

    .line 325
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->now()Lgnu/math/DateTime;

    move-result-object v0

    .line 326
    sget-object v1, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 336
    :cond_13
    return-object v0
.end method

.method public static currentTime()Lgnu/math/DateTime;
    .registers 2

    .prologue
    .line 346
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static dateTime(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 287
    if-eqz p0, :cond_8

    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v9, :cond_a

    :cond_8
    move-object v7, p0

    .line 305
    :goto_9
    return-object v7

    .line 288
    :cond_a
    if-eqz p1, :cond_10

    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v9, :cond_12

    :cond_10
    move-object v7, p1

    goto :goto_9

    .line 289
    :cond_12
    const-string v9, "dateTime"

    invoke-static {v9, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 290
    .local v0, "date":Lgnu/math/DateTime;
    const-string v9, "dateTime"

    invoke-static {v9, p1}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v4

    .line 291
    .local v4, "time":Lgnu/math/DateTime;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    .line 293
    const/16 v9, 0x54

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v4, v3}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 295
    invoke-virtual {v0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v9

    if-nez v9, :cond_56

    move v1, v7

    .line 296
    .local v1, "hasZone1":Z
    :goto_35
    invoke-virtual {v4}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v9

    if-nez v9, :cond_58

    move v2, v7

    .line 297
    .local v2, "hasZone2":Z
    :goto_3c
    if-nez v1, :cond_40

    if-eqz v2, :cond_5f

    .line 299
    :cond_40
    invoke-virtual {v0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v5

    .line 300
    .local v5, "zone1":I
    invoke-virtual {v4}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v6

    .line 301
    .local v6, "zone2":I
    if-eqz v1, :cond_5a

    if-eqz v2, :cond_5a

    if-eq v5, v6, :cond_5a

    .line 302
    new-instance v7, Ljava/lang/Error;

    const-string v8, "dateTime: incompatible timezone in arguments"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v1    # "hasZone1":Z
    .end local v2    # "hasZone2":Z
    .end local v5    # "zone1":I
    .end local v6    # "zone2":I
    :cond_56
    move v1, v8

    .line 295
    goto :goto_35

    .restart local v1    # "hasZone1":Z
    :cond_58
    move v2, v8

    .line 296
    goto :goto_3c

    .line 303
    .restart local v2    # "hasZone2":Z
    .restart local v5    # "zone1":I
    .restart local v6    # "zone2":I
    :cond_5a
    if-eqz v1, :cond_6c

    .end local v5    # "zone1":I
    :goto_5c
    invoke-static {v5, v3}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 305
    .end local v6    # "zone2":I
    :cond_5f
    sget-object v7, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/kawa/xml/XTimeType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/math/DateTime;

    goto :goto_9

    .restart local v5    # "zone1":I
    .restart local v6    # "zone2":I
    :cond_6c
    move v5, v6

    .line 303
    goto :goto_5c
.end method

.method public static dayFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 128
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 129
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "day-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getDay()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static dayFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 76
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 77
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "day-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getDay()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static daysFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 177
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "days-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getDays()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static getImplicitTimezone()Lgnu/math/Duration;
    .registers 2

    .prologue
    .line 225
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-static {v0}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method static getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;
    .registers 9
    .param p0, "date"    # Lgnu/math/DateTime;

    .prologue
    .line 94
    invoke-virtual {p0}, Lgnu/math/DateTime;->getSecondsOnly()I

    move-result v2

    .line 95
    .local v2, "seconds":I
    invoke-virtual {p0}, Lgnu/math/DateTime;->getNanoSecondsOnly()I

    move-result v3

    int-to-long v0, v3

    .line 96
    .local v0, "nanos":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_14

    .line 97
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .line 99
    :goto_13
    return-object v3

    .line 98
    :cond_14
    int-to-long v4, v2

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 99
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13
.end method

.method public static hoursFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 82
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 83
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "hours-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getHours()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static hoursFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 182
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 183
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "hours-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getHours()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static hoursFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 140
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 141
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "hours-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getHours()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static implicitTimezone()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 351
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static minutesFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 88
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 89
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "minutes-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static minutesFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 188
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 189
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "minutes-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static minutesFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 146
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 147
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "minutes-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static monthFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 122
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 123
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "month-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMonth()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static monthFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 70
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 71
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "month-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMonth()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static monthsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 170
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 171
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "months-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getMonths()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static now()Lgnu/math/DateTime;
    .registers 1

    .prologue
    .line 282
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0}, Lgnu/kawa/xml/XTimeType;->now()Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;
    .registers 15
    .param p0, "s"    # J
    .param p2, "n"    # I

    .prologue
    const-wide/16 v10, 0xa

    .line 194
    if-nez p2, :cond_9

    .line 195
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 208
    :cond_8
    :goto_8
    return-object v0

    .line 196
    :cond_9
    const/16 v4, 0x9

    .line 198
    .local v4, "scale":I
    long-to-int v5, p0

    int-to-long v6, v5

    cmp-long v5, v6, p0

    if-eqz v5, :cond_21

    const/4 v1, 0x1

    .line 199
    .local v1, "huge":Z
    :goto_12
    if-eqz v1, :cond_23

    int-to-long v2, p2

    .line 200
    .local v2, "ns":J
    :goto_15
    rem-long v6, v2, v10

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2b

    .line 202
    div-long/2addr v2, v10

    .line 203
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 198
    .end local v1    # "huge":Z
    .end local v2    # "ns":J
    :cond_21
    const/4 v1, 0x0

    goto :goto_12

    .line 199
    .restart local v1    # "huge":Z
    :cond_23
    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v6, p0

    int-to-long v8, p2

    add-long v2, v6, v8

    goto :goto_15

    .line 205
    .restart local v2    # "ns":J
    :cond_2b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 206
    .local v0, "dec":Ljava/math/BigDecimal;
    if-eqz v1, :cond_8

    .line 207
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_8
.end method

.method public static secondsFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 104
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 105
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "seconds-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_6
.end method

.method public static secondsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 213
    if-eqz p0, :cond_6

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v3, :cond_7

    .line 220
    .end local p0    # "arg":Ljava/lang/Object;
    .local v0, "d":Lgnu/math/Duration;
    .local v1, "n":I
    .local v2, "s":I
    :cond_6
    :goto_6
    return-object p0

    .line 214
    .end local v0    # "d":Lgnu/math/Duration;
    .end local v1    # "n":I
    .end local v2    # "s":I
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v3, "seconds-from-duration"

    invoke-static {v3, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    .line 215
    .restart local v0    # "d":Lgnu/math/Duration;
    invoke-virtual {v0}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v2

    .line 216
    .restart local v2    # "s":I
    invoke-virtual {v0}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v1

    .line 217
    .restart local v1    # "n":I
    if-nez v1, :cond_1c

    .line 218
    invoke-static {v2}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6

    .line 220
    :cond_1c
    int-to-long v4, v2

    invoke-static {v4, v5, v1}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_6
.end method

.method public static secondsFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 152
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 153
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "seconds-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_6
.end method

.method static timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;
    .registers 2
    .param p0, "time"    # Lgnu/math/DateTime;

    .prologue
    .line 52
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 53
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 54
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object v0

    goto :goto_8
.end method

.method public static timezoneFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 134
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 135
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "timezone-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6
.end method

.method public static timezoneFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 110
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 111
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "timezone-from-datetime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6
.end method

.method public static timezoneFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 158
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 159
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "timezone-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6
.end method

.method public static yearFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 117
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "year-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static yearFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 64
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 65
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "year-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static yearsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 164
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    .line 165
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const-string v0, "years-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getYears()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method
