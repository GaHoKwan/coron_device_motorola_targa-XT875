.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000

.field public static final FORMAT_CAP_NOON:I = 0x400

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"

.field public static final LENGTH_LONG:I = 0xa

.field public static final LENGTH_MEDIUM:I = 0x14

.field public static final LENGTH_SHORT:I = 0x1e

.field public static final LENGTH_SHORTER:I = 0x28

.field public static final LENGTH_SHORTEST:I = 0x32

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field static final sameAbbrevMonthTable:[I

.field public static final sameMonthTable:[I

.field static final sameYearAbbrevMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 89
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 117
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/text/format/DateUtils;->sAmPm:[I

    .line 210
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 232
    new-array v0, v3, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/text/format/DateUtils;->sameYearAbbrevMonthTable:[I

    .line 258
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    .line 280
    new-array v0, v3, [I

    fill-array-data v0, :array_c

    sput-object v0, Landroid/text/format/DateUtils;->sameAbbrevMonthTable:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0x5dt 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
        0x60t 0x0t 0x4t 0x1t
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
        0x67t 0x0t 0x4t 0x1t
        0x68t 0x0t 0x4t 0x1t
        0x69t 0x0t 0x4t 0x1t
        0x6at 0x0t 0x4t 0x1t
    .end array-data

    .line 57
    :array_2
    .array-data 0x4
        0x6bt 0x0t 0x4t 0x1t
        0x6ct 0x0t 0x4t 0x1t
        0x6dt 0x0t 0x4t 0x1t
        0x6et 0x0t 0x4t 0x1t
        0x6ft 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
        0x71t 0x0t 0x4t 0x1t
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x72t 0x0t 0x4t 0x1t
        0x73t 0x0t 0x4t 0x1t
        0x74t 0x0t 0x4t 0x1t
        0x75t 0x0t 0x4t 0x1t
        0x76t 0x0t 0x4t 0x1t
        0x77t 0x0t 0x4t 0x1t
        0x78t 0x0t 0x4t 0x1t
    .end array-data

    .line 75
    :array_4
    .array-data 0x4
        0x2dt 0x0t 0x4t 0x1t
        0x2et 0x0t 0x4t 0x1t
        0x2ft 0x0t 0x4t 0x1t
        0x30t 0x0t 0x4t 0x1t
        0x31t 0x0t 0x4t 0x1t
        0x32t 0x0t 0x4t 0x1t
        0x33t 0x0t 0x4t 0x1t
        0x34t 0x0t 0x4t 0x1t
        0x35t 0x0t 0x4t 0x1t
        0x36t 0x0t 0x4t 0x1t
        0x37t 0x0t 0x4t 0x1t
        0x38t 0x0t 0x4t 0x1t
    .end array-data

    .line 89
    :array_5
    .array-data 0x4
        0x39t 0x0t 0x4t 0x1t
        0x3at 0x0t 0x4t 0x1t
        0x3bt 0x0t 0x4t 0x1t
        0x3ct 0x0t 0x4t 0x1t
        0x3dt 0x0t 0x4t 0x1t
        0x3et 0x0t 0x4t 0x1t
        0x3ft 0x0t 0x4t 0x1t
        0x40t 0x0t 0x4t 0x1t
        0x41t 0x0t 0x4t 0x1t
        0x42t 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
    .end array-data

    .line 103
    :array_6
    .array-data 0x4
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x4bt 0x0t 0x4t 0x1t
        0x4ct 0x0t 0x4t 0x1t
        0x4dt 0x0t 0x4t 0x1t
        0x4et 0x0t 0x4t 0x1t
        0x4ft 0x0t 0x4t 0x1t
        0x50t 0x0t 0x4t 0x1t
    .end array-data

    .line 117
    :array_7
    .array-data 0x4
        0x51t 0x0t 0x4t 0x1t
        0x52t 0x0t 0x4t 0x1t
        0x53t 0x0t 0x4t 0x1t
        0x54t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
        0x56t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
        0x59t 0x0t 0x4t 0x1t
        0x5at 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x5ct 0x0t 0x4t 0x1t
    .end array-data

    .line 131
    :array_8
    .array-data 0x4
        0x79t 0x0t 0x4t 0x1t
        0x7at 0x0t 0x4t 0x1t
    .end array-data

    .line 210
    :array_9
    .array-data 0x4
        0xa2t 0x0t 0x4t 0x1t
        0xa3t 0x0t 0x4t 0x1t
        0xaft 0x0t 0x4t 0x1t
        0xb1t 0x0t 0x4t 0x1t
        0xa4t 0x0t 0x4t 0x1t
        0xa6t 0x0t 0x4t 0x1t
        0xa8t 0x0t 0x4t 0x1t
        0xaat 0x0t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x9bt 0x0t 0x4t 0x1t
        0x98t 0x0t 0x4t 0x1t
    .end array-data

    .line 232
    :array_a
    .array-data 0x4
        0x52t 0x5t 0x4t 0x1t
        0x53t 0x5t 0x4t 0x1t
        0x58t 0x5t 0x4t 0x1t
        0x59t 0x5t 0x4t 0x1t
        0x54t 0x5t 0x4t 0x1t
        0x55t 0x5t 0x4t 0x1t
        0x56t 0x5t 0x4t 0x1t
        0x57t 0x5t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x9bt 0x0t 0x4t 0x1t
        0x98t 0x0t 0x4t 0x1t
    .end array-data

    .line 258
    :array_b
    .array-data 0x4
        0xadt 0x0t 0x4t 0x1t
        0xaet 0x0t 0x4t 0x1t
        0xb0t 0x0t 0x4t 0x1t
        0xact 0x0t 0x4t 0x1t
        0xa5t 0x0t 0x4t 0x1t
        0xa7t 0x0t 0x4t 0x1t
        0xa9t 0x0t 0x4t 0x1t
        0xabt 0x0t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x9bt 0x0t 0x4t 0x1t
        0x98t 0x0t 0x4t 0x1t
    .end array-data

    .line 280
    :array_c
    .array-data 0x4
        0x49t 0x5t 0x4t 0x1t
        0x4at 0x5t 0x4t 0x1t
        0x4bt 0x5t 0x4t 0x1t
        0x4ct 0x5t 0x4t 0x1t
        0x4dt 0x5t 0x4t 0x1t
        0x4et 0x5t 0x4t 0x1t
        0x4ft 0x5t 0x4t 0x1t
        0x50t 0x5t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x9bt 0x0t 0x4t 0x1t
        0x98t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 1008
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 1009
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1010
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 1033
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 1034
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 1057
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 68
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 1228
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v39

    .line 1229
    .local v39, res:Landroid/content/res/Resources;
    and-int/lit8 v64, p6, 0x1

    if-eqz v64, :cond_5

    const/16 v42, 0x1

    .line 1230
    .local v42, showTime:Z
    :goto_0
    and-int/lit8 v64, p6, 0x2

    if-eqz v64, :cond_6

    const/16 v43, 0x1

    .line 1231
    .local v43, showWeekDay:Z
    :goto_1
    and-int/lit8 v64, p6, 0x4

    if-eqz v64, :cond_7

    const/16 v44, 0x1

    .line 1232
    .local v44, showYear:Z
    :goto_2
    and-int/lit8 v64, p6, 0x8

    if-eqz v64, :cond_8

    const/16 v37, 0x1

    .line 1233
    .local v37, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v64, v0

    if-eqz v64, :cond_9

    const/16 v61, 0x1

    .line 1234
    .local v61, useUTC:Z
    :goto_4
    const v64, 0x88000

    and-int v64, v64, p6

    if-eqz v64, :cond_a

    const/4 v6, 0x1

    .line 1235
    .local v6, abbrevWeekDay:Z
    :goto_5
    const/high16 v64, 0x9

    and-int v64, v64, p6

    if-eqz v64, :cond_b

    const/4 v4, 0x1

    .line 1236
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v64, p6, 0x20

    if-eqz v64, :cond_c

    const/16 v35, 0x1

    .line 1237
    .local v35, noMonthDay:Z
    :goto_7
    const/high16 v64, 0x2

    and-int v64, v64, p6

    if-eqz v64, :cond_d

    const/16 v38, 0x1

    .line 1242
    .local v38, numericDate:Z
    :goto_8
    cmp-long v64, p2, p4

    if-nez v64, :cond_e

    const/16 v32, 0x1

    .line 1245
    .local v32, isInstant:Z
    :goto_9
    if-eqz p7, :cond_f

    .line 1246
    new-instance v45, Landroid/text/format/Time;

    move-object/from16 v0, v45

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v45, startDate:Landroid/text/format/Time;
    :goto_a
    move-object/from16 v0, v45

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1256
    if-eqz v32, :cond_11

    .line 1257
    move-object/from16 v15, v45

    .line 1258
    .local v15, endDate:Landroid/text/format/Time;
    const/4 v12, 0x0

    .line 1273
    .local v12, dayDistance:I
    :goto_b
    if-nez v32, :cond_1

    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    iget v0, v15, Landroid/text/format/Time;->minute:I

    move/from16 v65, v0

    or-int v64, v64, v65

    iget v0, v15, Landroid/text/format/Time;->second:I

    move/from16 v65, v0

    or-int v64, v64, v65

    if-nez v64, :cond_1

    if-eqz v42, :cond_0

    const/16 v64, 0x1

    move/from16 v0, v64

    if-gt v12, v0, :cond_1

    .line 1276
    :cond_0
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x1

    move/from16 v0, v64

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    .line 1277
    const/16 v64, 0x1

    move/from16 v0, v64

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1280
    :cond_1
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v47, v0

    .line 1281
    .local v47, startDay:I
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v50, v0

    .line 1282
    .local v50, startMonthNum:I
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v56, v0

    .line 1284
    .local v56, startYear:I
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    .line 1285
    .local v17, endDay:I
    iget v0, v15, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    .line 1286
    .local v20, endMonthNum:I
    iget v0, v15, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    .line 1288
    .local v26, endYear:I
    const-string v55, ""

    .line 1289
    .local v55, startWeekDayString:Ljava/lang/String;
    const-string v25, ""

    .line 1290
    .local v25, endWeekDayString:Ljava/lang/String;
    if-eqz v43, :cond_2

    .line 1291
    const-string v62, ""

    .line 1292
    .local v62, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_14

    .line 1293
    const-string v62, "%a"

    .line 1297
    :goto_c
    move-object/from16 v0, v45

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1298
    if-eqz v32, :cond_15

    move-object/from16 v25, v55

    .line 1301
    .end local v62           #weekDayFormat:Ljava/lang/String;
    :cond_2
    :goto_d
    const-string v54, ""

    .line 1302
    .local v54, startTimeString:Ljava/lang/String;
    const-string v24, ""

    .line 1303
    .local v24, endTimeString:Ljava/lang/String;
    if-eqz v42, :cond_4

    .line 1304
    const-string v53, ""

    .line 1305
    .local v53, startTimeFormat:Ljava/lang/String;
    const-string v23, ""

    .line 1306
    .local v23, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v64, v0

    if-eqz v64, :cond_16

    const/16 v29, 0x1

    .line 1307
    .local v29, force24Hour:Z
    :goto_e
    and-int/lit8 v64, p6, 0x40

    if-eqz v64, :cond_17

    const/16 v28, 0x1

    .line 1309
    .local v28, force12Hour:Z
    :goto_f
    if-eqz v29, :cond_18

    .line 1310
    const/16 v60, 0x1

    .line 1316
    .local v60, use24Hour:Z
    :goto_10
    if-eqz v60, :cond_1a

    .line 1317
    const v64, 0x104007e

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v53, v23

    .line 1388
    :cond_3
    :goto_11
    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1389
    if-eqz v32, :cond_2e

    move-object/from16 v24, v54

    .line 1396
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v53           #startTimeFormat:Ljava/lang/String;
    .end local v60           #use24Hour:Z
    :cond_4
    :goto_12
    if-eqz v44, :cond_2f

    .line 1413
    :goto_13
    if-eqz v38, :cond_33

    .line 1414
    const v64, 0x1040083

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1445
    .local v14, defaultDateFormat:Ljava/lang/String;
    :goto_14
    if-eqz v43, :cond_3c

    .line 1446
    if-eqz v42, :cond_3b

    .line 1447
    const v64, 0x104009c

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1459
    .local v30, fullFormat:Ljava/lang/String;
    :goto_15
    if-eqz v35, :cond_3e

    move/from16 v0, v50

    move/from16 v1, v20

    if-ne v0, v1, :cond_3e

    move/from16 v0, v56

    move/from16 v1, v26

    if-ne v0, v1, :cond_3e

    .line 1461
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    aput-object v67, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    .line 1626
    :goto_16
    return-object v64

    .line 1229
    .end local v4           #abbrevMonth:Z
    .end local v6           #abbrevWeekDay:Z
    .end local v12           #dayDistance:I
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    .end local v15           #endDate:Landroid/text/format/Time;
    .end local v17           #endDay:I
    .end local v20           #endMonthNum:I
    .end local v24           #endTimeString:Ljava/lang/String;
    .end local v25           #endWeekDayString:Ljava/lang/String;
    .end local v26           #endYear:I
    .end local v30           #fullFormat:Ljava/lang/String;
    .end local v32           #isInstant:Z
    .end local v35           #noMonthDay:Z
    .end local v37           #noYear:Z
    .end local v38           #numericDate:Z
    .end local v42           #showTime:Z
    .end local v43           #showWeekDay:Z
    .end local v44           #showYear:Z
    .end local v45           #startDate:Landroid/text/format/Time;
    .end local v47           #startDay:I
    .end local v50           #startMonthNum:I
    .end local v54           #startTimeString:Ljava/lang/String;
    .end local v55           #startWeekDayString:Ljava/lang/String;
    .end local v56           #startYear:I
    .end local v61           #useUTC:Z
    :cond_5
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 1230
    .restart local v42       #showTime:Z
    :cond_6
    const/16 v43, 0x0

    goto/16 :goto_1

    .line 1231
    .restart local v43       #showWeekDay:Z
    :cond_7
    const/16 v44, 0x0

    goto/16 :goto_2

    .line 1232
    .restart local v44       #showYear:Z
    :cond_8
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 1233
    .restart local v37       #noYear:Z
    :cond_9
    const/16 v61, 0x0

    goto/16 :goto_4

    .line 1234
    .restart local v61       #useUTC:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1235
    .restart local v6       #abbrevWeekDay:Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1236
    .restart local v4       #abbrevMonth:Z
    :cond_c
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 1237
    .restart local v35       #noMonthDay:Z
    :cond_d
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 1242
    .restart local v38       #numericDate:Z
    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 1247
    .restart local v32       #isInstant:Z
    :cond_f
    if-eqz v61, :cond_10

    .line 1248
    new-instance v45, Landroid/text/format/Time;

    const-string v64, "UTC"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v45       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1250
    .end local v45           #startDate:Landroid/text/format/Time;
    :cond_10
    new-instance v45, Landroid/text/format/Time;

    invoke-direct/range {v45 .. v45}, Landroid/text/format/Time;-><init>()V

    .restart local v45       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1260
    :cond_11
    if-eqz p7, :cond_12

    .line 1261
    new-instance v15, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1267
    .restart local v15       #endDate:Landroid/text/format/Time;
    :goto_17
    move-wide/from16 v0, p4

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1268
    move-object/from16 v0, v45

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v64

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v48

    .line 1269
    .local v48, startJulianDay:I
    iget-wide v0, v15, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v64

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    .line 1270
    .local v18, endJulianDay:I
    sub-int v12, v18, v48

    .restart local v12       #dayDistance:I
    goto/16 :goto_b

    .line 1262
    .end local v12           #dayDistance:I
    .end local v15           #endDate:Landroid/text/format/Time;
    .end local v18           #endJulianDay:I
    .end local v48           #startJulianDay:I
    :cond_12
    if-eqz v61, :cond_13

    .line 1263
    new-instance v15, Landroid/text/format/Time;

    const-string v64, "UTC"

    move-object/from16 v0, v64

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v15       #endDate:Landroid/text/format/Time;
    goto :goto_17

    .line 1265
    .end local v15           #endDate:Landroid/text/format/Time;
    :cond_13
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .restart local v15       #endDate:Landroid/text/format/Time;
    goto :goto_17

    .line 1295
    .restart local v12       #dayDistance:I
    .restart local v17       #endDay:I
    .restart local v20       #endMonthNum:I
    .restart local v25       #endWeekDayString:Ljava/lang/String;
    .restart local v26       #endYear:I
    .restart local v47       #startDay:I
    .restart local v50       #startMonthNum:I
    .restart local v55       #startWeekDayString:Ljava/lang/String;
    .restart local v56       #startYear:I
    .restart local v62       #weekDayFormat:Ljava/lang/String;
    :cond_14
    const-string v62, "%A"

    goto/16 :goto_c

    .line 1298
    :cond_15
    move-object/from16 v0, v62

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_d

    .line 1306
    .end local v62           #weekDayFormat:Ljava/lang/String;
    .restart local v23       #endTimeFormat:Ljava/lang/String;
    .restart local v24       #endTimeString:Ljava/lang/String;
    .restart local v53       #startTimeFormat:Ljava/lang/String;
    .restart local v54       #startTimeString:Ljava/lang/String;
    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_e

    .line 1307
    .restart local v29       #force24Hour:Z
    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_f

    .line 1311
    .restart local v28       #force12Hour:Z
    :cond_18
    if-eqz v28, :cond_19

    .line 1312
    const/16 v60, 0x0

    .restart local v60       #use24Hour:Z
    goto/16 :goto_10

    .line 1314
    .end local v60           #use24Hour:Z
    :cond_19
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v60

    .restart local v60       #use24Hour:Z
    goto/16 :goto_10

    .line 1320
    :cond_1a
    const v64, 0x84000

    and-int v64, v64, p6

    if-eqz v64, :cond_1c

    const/4 v5, 0x1

    .line 1321
    .local v5, abbrevTime:Z
    :goto_18
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v64, v0

    if-eqz v64, :cond_1d

    const/4 v7, 0x1

    .line 1322
    .local v7, capAMPM:Z
    :goto_19
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v64, v0

    if-eqz v64, :cond_1e

    const/16 v36, 0x1

    .line 1323
    .local v36, noNoon:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v64, v0

    if-eqz v64, :cond_1f

    const/4 v9, 0x1

    .line 1324
    .local v9, capNoon:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v64, v0

    if-eqz v64, :cond_20

    const/16 v34, 0x1

    .line 1325
    .local v34, noMidnight:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v64, v0

    if-eqz v64, :cond_21

    const/4 v8, 0x1

    .line 1327
    .local v8, capMidnight:Z
    :goto_1d
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v64, v0

    if-nez v64, :cond_22

    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v64, v0

    if-nez v64, :cond_22

    const/16 v52, 0x1

    .line 1328
    .local v52, startOnTheHour:Z
    :goto_1e
    iget v0, v15, Landroid/text/format/Time;->minute:I

    move/from16 v64, v0

    if-nez v64, :cond_23

    iget v0, v15, Landroid/text/format/Time;->second:I

    move/from16 v64, v0

    if-nez v64, :cond_23

    const/16 v22, 0x1

    .line 1329
    .local v22, endOnTheHour:Z
    :goto_1f
    if-eqz v5, :cond_25

    if-eqz v52, :cond_25

    .line 1330
    if-eqz v7, :cond_24

    .line 1331
    const v64, 0x1040337

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 1347
    :goto_20
    if-nez v32, :cond_1b

    .line 1348
    if-eqz v5, :cond_28

    if-eqz v22, :cond_28

    .line 1349
    if-eqz v7, :cond_27

    .line 1350
    const v64, 0x1040337

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1362
    :goto_21
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    const/16 v65, 0xc

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_2b

    if-eqz v22, :cond_2b

    if-nez v36, :cond_2b

    .line 1363
    if-eqz v9, :cond_2a

    .line 1364
    const v64, 0x10403b9

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1377
    :cond_1b
    :goto_22
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    const/16 v65, 0xc

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_3

    if-eqz v52, :cond_3

    if-nez v36, :cond_3

    .line 1378
    if-eqz v9, :cond_2d

    .line 1379
    const v64, 0x10403b9

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    goto/16 :goto_11

    .line 1320
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v22           #endOnTheHour:Z
    .end local v34           #noMidnight:Z
    .end local v36           #noNoon:Z
    .end local v52           #startOnTheHour:Z
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_18

    .line 1321
    .restart local v5       #abbrevTime:Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_19

    .line 1322
    .restart local v7       #capAMPM:Z
    :cond_1e
    const/16 v36, 0x0

    goto/16 :goto_1a

    .line 1323
    .restart local v36       #noNoon:Z
    :cond_1f
    const/4 v9, 0x0

    goto/16 :goto_1b

    .line 1324
    .restart local v9       #capNoon:Z
    :cond_20
    const/16 v34, 0x0

    goto/16 :goto_1c

    .line 1325
    .restart local v34       #noMidnight:Z
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 1327
    .restart local v8       #capMidnight:Z
    :cond_22
    const/16 v52, 0x0

    goto/16 :goto_1e

    .line 1328
    .restart local v52       #startOnTheHour:Z
    :cond_23
    const/16 v22, 0x0

    goto :goto_1f

    .line 1333
    .restart local v22       #endOnTheHour:Z
    :cond_24
    const v64, 0x1040336

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    goto :goto_20

    .line 1336
    :cond_25
    if-eqz v7, :cond_26

    .line 1337
    const v64, 0x1040080

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    goto/16 :goto_20

    .line 1339
    :cond_26
    const v64, 0x104007f

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    goto/16 :goto_20

    .line 1352
    :cond_27
    const v64, 0x1040336

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_21

    .line 1355
    :cond_28
    if-eqz v7, :cond_29

    .line 1356
    const v64, 0x1040080

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_21

    .line 1358
    :cond_29
    const v64, 0x104007f

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_21

    .line 1366
    :cond_2a
    const v64, 0x10403b8

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1368
    :cond_2b
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    if-nez v64, :cond_1b

    if-eqz v22, :cond_1b

    if-nez v34, :cond_1b

    .line 1369
    if-eqz v8, :cond_2c

    .line 1370
    const v64, 0x10403bb

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1372
    :cond_2c
    const v64, 0x10403ba

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1381
    :cond_2d
    const v64, 0x10403b8

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    goto/16 :goto_11

    .line 1389
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v22           #endOnTheHour:Z
    .end local v34           #noMidnight:Z
    .end local v36           #noNoon:Z
    .end local v52           #startOnTheHour:Z
    :cond_2e
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_12

    .line 1400
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v53           #startTimeFormat:Ljava/lang/String;
    .end local v60           #use24Hour:Z
    :cond_2f
    if-eqz v37, :cond_30

    .line 1402
    const/16 v44, 0x0

    goto/16 :goto_13

    .line 1403
    :cond_30
    move/from16 v0, v56

    move/from16 v1, v26

    if-eq v0, v1, :cond_31

    .line 1404
    const/16 v44, 0x1

    goto/16 :goto_13

    .line 1407
    :cond_31
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1408
    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 1409
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v64, v0

    move/from16 v0, v56

    move/from16 v1, v64

    if-eq v0, v1, :cond_32

    const/16 v44, 0x1

    :goto_23
    goto/16 :goto_13

    :cond_32
    const/16 v44, 0x0

    goto :goto_23

    .line 1415
    .end local v10           #currentTime:Landroid/text/format/Time;
    :cond_33
    if-eqz v44, :cond_37

    .line 1416
    if-eqz v4, :cond_35

    .line 1417
    if-eqz v35, :cond_34

    .line 1418
    const v64, 0x1040091

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1420
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_34
    const v64, 0x104008b

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1423
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_35
    if-eqz v35, :cond_36

    .line 1424
    const v64, 0x104008e

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1426
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_36
    const v64, 0x1040086

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1430
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    if-eqz v4, :cond_39

    .line 1431
    if-eqz v35, :cond_38

    .line 1432
    const v64, 0x1040090

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1434
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_38
    const v64, 0x104008f

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1437
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_39
    if-eqz v35, :cond_3a

    .line 1438
    const v64, 0x104008d

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1440
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_3a
    const v64, 0x104008c

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1449
    :cond_3b
    const v64, 0x104009d

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1452
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_3c
    if-eqz v42, :cond_3d

    .line 1453
    const v64, 0x104009e

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1455
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_3d
    const v64, 0x1040093

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1464
    :cond_3e
    move/from16 v0, v56

    move/from16 v1, v26

    if-ne v0, v1, :cond_3f

    if-eqz v35, :cond_40

    .line 1468
    :cond_3f
    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1469
    .local v46, startDateString:Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1473
    .local v16, endDateString:Ljava/lang/String;
    const/16 v64, 0x6

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v55, v64, v65

    const/16 v65, 0x1

    aput-object v46, v64, v65

    const/16 v65, 0x2

    aput-object v54, v64, v65

    const/16 v65, 0x3

    aput-object v25, v64, v65

    const/16 v65, 0x4

    aput-object v16, v64, v65

    const/16 v65, 0x5

    aput-object v24, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1481
    .end local v16           #endDateString:Ljava/lang/String;
    .end local v46           #startDateString:Ljava/lang/String;
    :cond_40
    if-eqz v38, :cond_45

    .line 1482
    const v64, 0x1040547

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1492
    .local v33, monthFormat:Ljava/lang/String;
    :goto_24
    if-eqz v38, :cond_47

    .line 1493
    const v64, 0x1040546

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1494
    .local v13, dayFormat:Ljava/lang/String;
    const v64, 0x1040548

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 1502
    .local v63, yearFormat:Ljava/lang/String;
    :goto_25
    move/from16 v0, v50

    move/from16 v1, v20

    if-eq v0, v1, :cond_4c

    .line 1509
    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1510
    .local v51, startMonthString:Ljava/lang/String;
    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1511
    .local v49, startMonthDayString:Ljava/lang/String;
    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1513
    .local v57, startYearString:Ljava/lang/String;
    if-eqz v32, :cond_48

    const/16 v21, 0x0

    .line 1514
    .local v21, endMonthString:Ljava/lang/String;
    :goto_26
    if-eqz v32, :cond_49

    const/16 v19, 0x0

    .line 1515
    .local v19, endMonthDayString:Ljava/lang/String;
    :goto_27
    if-eqz v32, :cond_4a

    const/16 v27, 0x0

    .line 1518
    .local v27, endYearString:Ljava/lang/String;
    :goto_28
    const/16 v31, 0x0

    .line 1519
    .local v31, index:I
    if-eqz v43, :cond_41

    const/16 v31, 0x1

    .line 1520
    :cond_41
    if-eqz v44, :cond_42

    add-int/lit8 v31, v31, 0x2

    .line 1521
    :cond_42
    if-eqz v42, :cond_43

    add-int/lit8 v31, v31, 0x4

    .line 1522
    :cond_43
    if-eqz v38, :cond_44

    add-int/lit8 v31, v31, 0x8

    .line 1524
    :cond_44
    if-eqz v4, :cond_4b

    sget-object v64, Landroid/text/format/DateUtils;->sameYearAbbrevMonthTable:[I

    aget v40, v64, v31

    .line 1526
    .local v40, resId:I
    :goto_29
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1530
    const/16 v64, 0xa

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v55, v64, v65

    const/16 v65, 0x1

    aput-object v51, v64, v65

    const/16 v65, 0x2

    aput-object v49, v64, v65

    const/16 v65, 0x3

    aput-object v57, v64, v65

    const/16 v65, 0x4

    aput-object v54, v64, v65

    const/16 v65, 0x5

    aput-object v25, v64, v65

    const/16 v65, 0x6

    aput-object v21, v64, v65

    const/16 v65, 0x7

    aput-object v19, v64, v65

    const/16 v65, 0x8

    aput-object v27, v64, v65

    const/16 v65, 0x9

    aput-object v24, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1483
    .end local v13           #dayFormat:Ljava/lang/String;
    .end local v19           #endMonthDayString:Ljava/lang/String;
    .end local v21           #endMonthString:Ljava/lang/String;
    .end local v27           #endYearString:Ljava/lang/String;
    .end local v31           #index:I
    .end local v33           #monthFormat:Ljava/lang/String;
    .end local v40           #resId:I
    .end local v49           #startMonthDayString:Ljava/lang/String;
    .end local v51           #startMonthString:Ljava/lang/String;
    .end local v57           #startYearString:Ljava/lang/String;
    .end local v63           #yearFormat:Ljava/lang/String;
    :cond_45
    if-eqz v4, :cond_46

    .line 1484
    const v64, 0x10400b2

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    .restart local v33       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1487
    .end local v33           #monthFormat:Ljava/lang/String;
    :cond_46
    const v64, 0x1040544

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    .restart local v33       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1496
    :cond_47
    const v64, 0x1040543

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1497
    .restart local v13       #dayFormat:Ljava/lang/String;
    const v64, 0x1040545

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v63

    .restart local v63       #yearFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 1513
    .restart local v49       #startMonthDayString:Ljava/lang/String;
    .restart local v51       #startMonthString:Ljava/lang/String;
    .restart local v57       #startYearString:Ljava/lang/String;
    :cond_48
    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_26

    .line 1514
    .restart local v21       #endMonthString:Ljava/lang/String;
    :cond_49
    invoke-virtual {v15, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_27

    .line 1515
    .restart local v19       #endMonthDayString:Ljava/lang/String;
    :cond_4a
    move-object/from16 v0, v63

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_28

    .line 1524
    .restart local v27       #endYearString:Ljava/lang/String;
    .restart local v31       #index:I
    :cond_4b
    sget-object v64, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v40, v64, v31

    goto/16 :goto_29

    .line 1537
    .end local v19           #endMonthDayString:Ljava/lang/String;
    .end local v21           #endMonthString:Ljava/lang/String;
    .end local v27           #endYearString:Ljava/lang/String;
    .end local v31           #index:I
    .end local v49           #startMonthDayString:Ljava/lang/String;
    .end local v51           #startMonthString:Ljava/lang/String;
    .end local v57           #startYearString:Ljava/lang/String;
    :cond_4c
    move/from16 v0, v47

    move/from16 v1, v17

    if-eq v0, v1, :cond_55

    .line 1541
    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1542
    .restart local v51       #startMonthString:Ljava/lang/String;
    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1543
    .restart local v49       #startMonthDayString:Ljava/lang/String;
    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1545
    .restart local v57       #startYearString:Ljava/lang/String;
    if-eqz v32, :cond_51

    const/16 v21, 0x0

    .line 1546
    .restart local v21       #endMonthString:Ljava/lang/String;
    :goto_2a
    if-eqz v32, :cond_52

    const/16 v19, 0x0

    .line 1547
    .restart local v19       #endMonthDayString:Ljava/lang/String;
    :goto_2b
    if-eqz v32, :cond_53

    const/16 v27, 0x0

    .line 1550
    .restart local v27       #endYearString:Ljava/lang/String;
    :goto_2c
    const/16 v31, 0x0

    .line 1551
    .restart local v31       #index:I
    if-eqz v43, :cond_4d

    const/16 v31, 0x1

    .line 1552
    :cond_4d
    if-eqz v44, :cond_4e

    add-int/lit8 v31, v31, 0x2

    .line 1553
    :cond_4e
    if-eqz v42, :cond_4f

    add-int/lit8 v31, v31, 0x4

    .line 1554
    :cond_4f
    if-eqz v38, :cond_50

    add-int/lit8 v31, v31, 0x8

    .line 1555
    :cond_50
    if-eqz v4, :cond_54

    sget-object v64, Landroid/text/format/DateUtils;->sameAbbrevMonthTable:[I

    aget v40, v64, v31

    .line 1556
    .restart local v40       #resId:I
    :goto_2d
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1560
    const/16 v64, 0xa

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v55, v64, v65

    const/16 v65, 0x1

    aput-object v51, v64, v65

    const/16 v65, 0x2

    aput-object v49, v64, v65

    const/16 v65, 0x3

    aput-object v57, v64, v65

    const/16 v65, 0x4

    aput-object v54, v64, v65

    const/16 v65, 0x5

    aput-object v25, v64, v65

    const/16 v65, 0x6

    aput-object v21, v64, v65

    const/16 v65, 0x7

    aput-object v19, v64, v65

    const/16 v65, 0x8

    aput-object v27, v64, v65

    const/16 v65, 0x9

    aput-object v24, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1545
    .end local v19           #endMonthDayString:Ljava/lang/String;
    .end local v21           #endMonthString:Ljava/lang/String;
    .end local v27           #endYearString:Ljava/lang/String;
    .end local v31           #index:I
    .end local v40           #resId:I
    :cond_51
    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_2a

    .line 1546
    .restart local v21       #endMonthString:Ljava/lang/String;
    :cond_52
    invoke-virtual {v15, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_2b

    .line 1547
    .restart local v19       #endMonthDayString:Ljava/lang/String;
    :cond_53
    move-object/from16 v0, v63

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_2c

    .line 1555
    .restart local v27       #endYearString:Ljava/lang/String;
    .restart local v31       #index:I
    :cond_54
    sget-object v64, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v40, v64, v31

    goto :goto_2d

    .line 1568
    .end local v19           #endMonthDayString:Ljava/lang/String;
    .end local v21           #endMonthString:Ljava/lang/String;
    .end local v27           #endYearString:Ljava/lang/String;
    .end local v31           #index:I
    .end local v49           #startMonthDayString:Ljava/lang/String;
    .end local v51           #startMonthString:Ljava/lang/String;
    .end local v57           #startYearString:Ljava/lang/String;
    :cond_55
    and-int/lit8 v64, p6, 0x10

    if-eqz v64, :cond_59

    const/16 v41, 0x1

    .line 1571
    .local v41, showDate:Z
    :goto_2e
    if-nez v42, :cond_56

    if-nez v41, :cond_56

    if-nez v43, :cond_56

    const/16 v41, 0x1

    .line 1574
    :cond_56
    const-string v59, ""

    .line 1575
    .local v59, timeString:Ljava/lang/String;
    if-eqz v42, :cond_57

    .line 1578
    if-eqz v32, :cond_5a

    .line 1581
    move-object/from16 v59, v54

    .line 1591
    :cond_57
    :goto_2f
    const-string v30, ""

    .line 1592
    const-string v11, ""

    .line 1593
    .local v11, dateString:Ljava/lang/String;
    if-eqz v41, :cond_5e

    .line 1594
    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1595
    if-eqz v43, :cond_5c

    .line 1596
    if-eqz v42, :cond_5b

    .line 1598
    const v64, 0x104009f

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1626
    :cond_58
    :goto_30
    const/16 v64, 0x3

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v59, v64, v65

    const/16 v65, 0x1

    aput-object v55, v64, v65

    const/16 v65, 0x2

    aput-object v11, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1568
    .end local v11           #dateString:Ljava/lang/String;
    .end local v41           #showDate:Z
    .end local v59           #timeString:Ljava/lang/String;
    :cond_59
    const/16 v41, 0x0

    goto :goto_2e

    .line 1584
    .restart local v41       #showDate:Z
    .restart local v59       #timeString:Ljava/lang/String;
    :cond_5a
    const v64, 0x1040092

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1586
    .local v58, timeFormat:Ljava/lang/String;
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v54, v64, v65

    const/16 v65, 0x1

    aput-object v24, v64, v65

    move-object/from16 v0, v58

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    goto :goto_2f

    .line 1601
    .end local v58           #timeFormat:Ljava/lang/String;
    .restart local v11       #dateString:Ljava/lang/String;
    :cond_5b
    const v64, 0x10400a0

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_30

    .line 1604
    :cond_5c
    if-eqz v42, :cond_5d

    .line 1606
    const v64, 0x104008a

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_30

    .line 1609
    :cond_5d
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v11, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1612
    :cond_5e
    if-eqz v43, :cond_60

    .line 1613
    if-eqz v42, :cond_5f

    .line 1615
    const v64, 0x10400a1

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_30

    .line 1618
    :cond_5f
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v55, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1620
    :cond_60
    if-eqz v42, :cond_58

    .line 1621
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v59, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1672
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 733
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 735
    const-wide/16 v2, 0x0

    .line 736
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 737
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 739
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 740
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 741
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 743
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 744
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 745
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 747
    :cond_1
    move-wide v6, p1

    .line 750
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 751
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    :cond_2
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 7
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 795
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 796
    move-object v0, p0

    .line 797
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 802
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    cmp-long v1, p2, v3

    if-gez v1, :cond_1

    .line 803
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    :goto_1
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    cmp-long v1, p4, v3

    if-gez v1, :cond_2

    .line 810
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    :goto_2
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 800
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 805
    :cond_1
    div-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 812
    :cond_2
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 817
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 8
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 762
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 763
    move-object v0, p0

    .line 764
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 769
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    cmp-long v1, p4, v3

    if-gez v1, :cond_1

    .line 772
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    :goto_1
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 778
    cmp-long v1, p6, v3

    if-gez v1, :cond_2

    .line 779
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    :goto_2
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 767
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 774
    :cond_1
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 781
    :cond_2
    div-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 786
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 844
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 845
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 846
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 847
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 848
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 852
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 855
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 859
    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 857
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 3
    .parameter "ampm"

    .prologue
    .line 379
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 380
    .local v0, r:Landroid/content/res/Resources;
    sget-object v1, Landroid/text/format/DateUtils;->sAmPm:[I

    add-int/lit8 v2, p0, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"

    .prologue
    .line 359
    sparse-switch p1, :sswitch_data_0

    .line 365
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 368
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, -0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 360
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 361
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 362
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 363
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 364
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 399
    sparse-switch p1, :sswitch_data_0

    .line 405
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 408
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 409
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 400
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 401
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 402
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 403
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 404
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static declared-synchronized getNumberOfDaysPassed(JJ)J
    .locals 6
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 581
    const-class v3, Landroid/text/format/DateUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 582
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 584
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 585
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 586
    .local v0, day1:I
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 587
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 588
    .local v1, day2:I
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v4, v2

    monitor-exit v3

    return-wide v4

    .line 581
    .end local v0           #day1:I
    .end local v1           #day2:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 616
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 618
    .local v15, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 619
    .local v13, now:J
    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 624
    .local v11, duration:J
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    .line 625
    const-wide/32 p5, 0x240c8400

    .line 630
    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .line 633
    .local v18, timeClause:Ljava/lang/CharSequence;
    cmp-long v3, v11, p5

    if-gez v3, :cond_2

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    .line 634
    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .line 635
    .local v16, relativeClause:Ljava/lang/CharSequence;
    const v3, 0x10403b7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 641
    .end local v16           #relativeClause:Ljava/lang/CharSequence;
    .local v17, result:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 626
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 627
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 637
    .restart local v18       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 638
    .local v10, dateClause:Ljava/lang/CharSequence;
    const v3, 0x1040089

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 11
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 655
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 656
    .local v7, startTime:Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 657
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 658
    .local v1, currentTime:Landroid/text/format/Time;
    invoke-virtual {v1, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 660
    iget-wide v8, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    .line 661
    .local v6, startDay:I
    iget-wide v8, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 663
    .local v0, currentDay:I
    sub-int v8, v0, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 664
    .local v2, days:I
    cmp-long v8, p3, p1

    if-lez v8, :cond_0

    const/4 v4, 0x1

    .line 666
    .local v4, past:Z
    :goto_0
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    .line 667
    if-eqz v4, :cond_1

    .line 668
    const v8, 0x104007b

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 684
    :goto_1
    return-object v8

    .line 664
    .end local v4           #past:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 670
    .restart local v4       #past:Z
    :cond_1
    const v8, 0x104007d

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 672
    :cond_2
    if-nez v2, :cond_3

    .line 673
    const v8, 0x104007c

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 677
    :cond_3
    if-eqz v4, :cond_4

    .line 678
    const v5, 0x1130004

    .line 683
    .local v5, resId:I
    :goto_2
    invoke-virtual {p0, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, format:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 680
    .end local v3           #format:Ljava/lang/String;
    .end local v5           #resId:I
    :cond_4
    const v5, 0x1130008

    .restart local v5       #resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 469
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 470
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 15
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 495
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 496
    .local v13, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int v0, v0, p6

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 498
    .local v6, abbrevRelative:Z
    :goto_0
    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    const/4 v12, 0x1

    .line 499
    .local v12, past:Z
    :goto_1
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 503
    .local v9, duration:J
    const-wide/32 v0, 0xea60

    cmp-long v0, v9, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0xea60

    cmp-long v0, p4, v0

    if-gez v0, :cond_5

    .line 504
    const-wide/16 v0, 0x3e8

    div-long v7, v9, v0

    .line 505
    .local v7, count:J
    if-eqz v12, :cond_3

    .line 506
    if-eqz v6, :cond_2

    .line 507
    const v14, 0x1130009

    .line 569
    .local v14, resId:I
    :goto_2
    long-to-int v0, v7

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    .line 570
    .local v11, format:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v7           #count:J
    .end local v11           #format:Ljava/lang/String;
    .end local v14           #resId:I
    :goto_3
    return-object v0

    .line 496
    .end local v6           #abbrevRelative:Z
    .end local v9           #duration:J
    .end local v12           #past:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 498
    .restart local v6       #abbrevRelative:Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 509
    .restart local v7       #count:J
    .restart local v9       #duration:J
    .restart local v12       #past:Z
    :cond_2
    const/high16 v14, 0x113

    .restart local v14       #resId:I
    goto :goto_2

    .line 512
    .end local v14           #resId:I
    :cond_3
    if-eqz v6, :cond_4

    .line 513
    const v14, 0x113000d

    .restart local v14       #resId:I
    goto :goto_2

    .line 515
    .end local v14           #resId:I
    :cond_4
    const v14, 0x1130005

    .restart local v14       #resId:I
    goto :goto_2

    .line 518
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v9, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p4, v0

    if-gez v0, :cond_9

    .line 519
    const-wide/32 v0, 0xea60

    div-long v7, v9, v0

    .line 520
    .restart local v7       #count:J
    if-eqz v12, :cond_7

    .line 521
    if-eqz v6, :cond_6

    .line 522
    const v14, 0x113000a

    .restart local v14       #resId:I
    goto :goto_2

    .line 524
    .end local v14           #resId:I
    :cond_6
    const v14, 0x1130001

    .restart local v14       #resId:I
    goto :goto_2

    .line 527
    .end local v14           #resId:I
    :cond_7
    if-eqz v6, :cond_8

    .line 528
    const v14, 0x113000e

    .restart local v14       #resId:I
    goto :goto_2

    .line 530
    .end local v14           #resId:I
    :cond_8
    const v14, 0x1130006

    .restart local v14       #resId:I
    goto :goto_2

    .line 533
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_9
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v9, v0

    if-gez v0, :cond_d

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p4, v0

    if-gez v0, :cond_d

    .line 534
    const-wide/32 v0, 0x36ee80

    div-long v7, v9, v0

    .line 535
    .restart local v7       #count:J
    if-eqz v12, :cond_b

    .line 536
    if-eqz v6, :cond_a

    .line 537
    const v14, 0x113000b

    .restart local v14       #resId:I
    goto :goto_2

    .line 539
    .end local v14           #resId:I
    :cond_a
    const v14, 0x1130002

    .restart local v14       #resId:I
    goto :goto_2

    .line 542
    .end local v14           #resId:I
    :cond_b
    if-eqz v6, :cond_c

    .line 543
    const v14, 0x113000f

    .restart local v14       #resId:I
    goto :goto_2

    .line 545
    .end local v14           #resId:I
    :cond_c
    const v14, 0x1130007

    .restart local v14       #resId:I
    goto :goto_2

    .line 548
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_d
    const-wide/32 v0, 0x240c8400

    cmp-long v0, v9, v0

    if-gez v0, :cond_11

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p4, v0

    if-gez v0, :cond_11

    .line 549
    invoke-static/range {p0 .. p3}, Landroid/text/format/DateUtils;->getNumberOfDaysPassed(JJ)J

    move-result-wide v7

    .line 550
    .restart local v7       #count:J
    if-eqz v12, :cond_f

    .line 551
    if-eqz v6, :cond_e

    .line 552
    const v14, 0x113000c

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 554
    .end local v14           #resId:I
    :cond_e
    const v14, 0x1130004

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 557
    .end local v14           #resId:I
    :cond_f
    if-eqz v6, :cond_10

    .line 558
    const v14, 0x1130010

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 560
    .end local v14           #resId:I
    :cond_10
    const v14, 0x1130008

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 566
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_11
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p0

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1743
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 16
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1694
    .local v8, now:J
    sub-long v13, v8, p1

    .line 1696
    .local v13, span:J
    const-class v15, Landroid/text/format/DateUtils;

    monitor-enter v15

    .line 1697
    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 1698
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1701
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    .line 1702
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1705
    :cond_1
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1706
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1709
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v3, :cond_3

    .line 1711
    const/4 v7, 0x1

    .local v7, flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1712
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1713
    .local v12, result:Ljava/lang/String;
    const v10, 0x10403a9

    .line 1727
    .local v10, prepositionId:I
    :goto_0
    if-eqz p3, :cond_2

    .line 1728
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1729
    .local v11, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v11, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1731
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit v15

    .line 1732
    return-object v12

    .line 1714
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-eq v2, v3, :cond_4

    .line 1716
    const v7, 0x20014

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1717
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1720
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x10403a8

    .line 1721
    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1723
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    const v7, 0x10010

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1724
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1725
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x10403a8

    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1731
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 432
    sparse-switch p1, :sswitch_data_0

    .line 439
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 442
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 443
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 433
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 434
    .restart local v0       #list:[I
    goto :goto_0

    .line 435
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 436
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 437
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 438
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    .line 688
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 690
    monitor-exit v1

    .line 691
    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    .line 694
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 695
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 696
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 697
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 698
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 699
    const v2, 0x10403bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 700
    const v2, 0x10403bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 702
    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 878
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 879
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 881
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 882
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 883
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 885
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 886
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v0, 0x1

    .line 898
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 901
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 905
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .parameter "zulu"

    .prologue
    .line 868
    if-eqz p0, :cond_0

    .line 869
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 871
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "millis"

    .prologue
    .line 710
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 712
    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static toDigitChar(J)C
    .locals 2
    .parameter "digit"

    .prologue
    .line 822
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cal"

    .prologue
    .line 919
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 920
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 921
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 922
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 962
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 963
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 964
    div-int/lit8 v0, v0, 0xa

    .line 965
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 966
    div-int/lit8 v0, v0, 0xa

    .line 967
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 968
    div-int/lit8 v0, v0, 0xa

    .line 969
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 971
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 972
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 973
    div-int/lit8 v0, v0, 0xa

    .line 974
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 976
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 977
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 978
    div-int/lit8 v0, v0, 0xa

    .line 979
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 981
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 983
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 984
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 985
    div-int/lit8 v0, v0, 0xa

    .line 986
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 988
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 989
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 990
    div-int/lit8 v0, v0, 0xa

    .line 991
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 993
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 994
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 995
    div-int/lit8 v0, v0, 0xa

    .line 996
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 998
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 939
    if-eqz p1, :cond_0

    .line 940
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 941
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 945
    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 943
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
