.class public Lcom/vzw/location/VzwLocation;
.super Landroid/location/Location;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x80

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x40

.field public static final GPS_VALID_FIX_ERROR:I = 0x100000

.field public static final GPS_VALID_FIX_MODE:I = 0x80000

.field public static final GPS_VALID_HEADING:I = 0x10

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x200

.field public static final GPS_VALID_LATITUDE:I = 0x2

.field public static final GPS_VALID_LONGITUDE:I = 0x4

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x20

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x100

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x40000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x2000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x10000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x8000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x4000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x20000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x1000

.field public static final GPS_VALID_SATELLITE_COUNT:I = 0x800

.field public static final GPS_VALID_SPEED:I = 0x8

.field public static final GPS_VALID_UTC_TIME:I = 0x1

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x400


# instance fields
.field private mAltWrtEllipsoid:F

.field private mAltWrtSeaLevel:F

.field private mFixMode:I

.field private mHdop:F

.field private mHorConf:F

.field private mMagVariation:F

.field private mMajorAxis:F

.field private mMajorAxisAngle:F

.field private mMinorAxis:F

.field private mPdop:F

.field private mValidFields:I

.field private mVdop:F

.field private mVerticalError:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/vzw/location/VzwLocation$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwLocation$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 324
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 47
    iput v2, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 48
    iput v2, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 50
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 51
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 52
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 53
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 54
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 55
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 56
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 57
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 58
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 59
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwLocation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwLocation;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 47
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 48
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 50
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 51
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 52
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 53
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 54
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 55
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 56
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 57
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 58
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 59
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 71
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation;->set(Lcom/vzw/location/VzwLocation;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 47
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 48
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 50
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 51
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 52
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 53
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 54
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 55
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 56
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 57
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 58
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 59
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 67
    return-void
.end method

.method private getVzwHalLocationValidFields(I)I
    .locals 7
    .parameter "VzwHalLocationFields"

    .prologue
    const/high16 v6, 0x8

    const/high16 v5, 0x4

    const/high16 v4, 0x2

    const/high16 v3, 0x1

    const v2, 0x8000

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, fields:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 358
    or-int/lit8 v0, v0, 0x2

    .line 360
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 361
    or-int/lit8 v0, v0, 0x4

    .line 363
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 364
    or-int/lit8 v0, v0, 0x40

    .line 366
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 367
    or-int/lit16 v0, v0, 0x100

    .line 369
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 370
    or-int/lit16 v0, v0, 0x200

    .line 372
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 373
    or-int/lit16 v0, v0, 0x400

    .line 375
    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    .line 378
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_6

    .line 381
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    .line 384
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_6

    .line 385
    or-int/lit16 v0, v0, 0x1000

    .line 387
    :cond_6
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_7

    .line 388
    or-int/lit16 v0, v0, 0x2000

    .line 390
    :cond_7
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_8

    .line 391
    or-int/2addr v0, v2

    .line 393
    :cond_8
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_9

    .line 394
    or-int/2addr v0, v3

    .line 396
    :cond_9
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_a

    .line 397
    or-int/2addr v0, v4

    .line 399
    :cond_a
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_b

    .line 400
    or-int/2addr v0, v6

    .line 402
    :cond_b
    and-int v1, p1, v2

    if-eqz v1, :cond_c

    .line 403
    or-int/lit8 v0, v0, 0x20

    .line 405
    :cond_c
    and-int v1, p1, v3

    if-eqz v1, :cond_d

    .line 406
    or-int/lit8 v0, v0, 0x1

    .line 408
    :cond_d
    and-int v1, p1, v4

    if-eqz v1, :cond_e

    .line 409
    or-int/lit8 v0, v0, 0x8

    .line 411
    :cond_e
    and-int v1, p1, v5

    if-eqz v1, :cond_f

    .line 412
    or-int/lit8 v0, v0, 0x10

    .line 414
    :cond_f
    and-int v1, p1, v6

    if-eqz v1, :cond_10

    .line 415
    or-int/2addr v0, v5

    .line 417
    :cond_10
    const/high16 v1, 0x10

    and-int/2addr v1, p1

    if-eqz v1, :cond_11

    .line 418
    or-int/lit16 v0, v0, 0x80

    .line 420
    :cond_11
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    return v0
.end method

.method public getAltitudeWrtSeaLevel()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    return v0
.end method

.method public getHorizontalConfidence()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    return v0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    return v0
.end method

.method public getMajorAxis()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    return v0
.end method

.method public getMinorAxis()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    return v0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    return v0
.end method

.method public getVerticalError()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-super {p0}, Landroid/location/Location;->reset()V

    .line 114
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 115
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 116
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 117
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 118
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 119
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 120
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 121
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 122
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 123
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 124
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 125
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 126
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 127
    return-void
.end method

.method public set(Lcom/vzw/location/VzwLocation;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 79
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 80
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 81
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 82
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 83
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 84
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 85
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 86
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 87
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 88
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 89
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mPdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 90
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mVdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 91
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 92
    return-void
.end method

.method public set(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 96
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getValidFieldMask()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->getVzwHalLocationValidFields(I)I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 97
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 98
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getHorizontalConfidence()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 99
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getVerticalAccuracy()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 100
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getMajorAxis()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 101
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getMajorAxisAngle()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 102
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getMinorAxis()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 103
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getAltitudeWrtEllipsoid()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 104
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getAltitudeWrtSeaLevel()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 105
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getHorizontalDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 106
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getPositionDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 107
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getVerticalDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 108
    invoke-virtual {p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->getMagneticVariation()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 109
    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 1
    .parameter "altWrtEllipsoid"

    .prologue
    .line 186
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 187
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 188
    return-void
.end method

.method public setAltitudeWrtSeaLevel(F)V
    .locals 1
    .parameter "altWrtSeaLevel"

    .prologue
    .line 191
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 192
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 193
    return-void
.end method

.method public setBearing(F)V
    .locals 1
    .parameter "bearing"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 156
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 157
    return-void
.end method

.method public setFixMode(I)V
    .locals 2
    .parameter "fixMode"

    .prologue
    .line 160
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 161
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 162
    return-void
.end method

.method public setHorizontalConfidence(F)V
    .locals 0
    .parameter "horConf"

    .prologue
    .line 165
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 166
    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 1
    .parameter "hdop"

    .prologue
    .line 196
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 197
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 198
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .parameter "latitude"

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 138
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 139
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .parameter "longitude"

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 144
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 145
    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 1
    .parameter "magVariation"

    .prologue
    .line 211
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 212
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 213
    return-void
.end method

.method public setMajorAxis(F)V
    .locals 2
    .parameter "majorAxis"

    .prologue
    .line 173
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 174
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 175
    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 0
    .parameter "majorAxisAngle"

    .prologue
    .line 178
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 179
    return-void
.end method

.method public setMinorAxis(F)V
    .locals 0
    .parameter "minorAxis"

    .prologue
    .line 182
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 183
    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 1
    .parameter "pdop"

    .prologue
    .line 201
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 202
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 203
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 150
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 151
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    .line 132
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 133
    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 1
    .parameter "vdop"

    .prologue
    .line 206
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 207
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 208
    return-void
.end method

.method public setVerticalError(F)V
    .locals 0
    .parameter "verError"

    .prologue
    .line 169
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VzwLocation[mValidFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFixMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHorConf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVerticalError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxisAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMinorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtEllipsoid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtSeaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMagVariation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 303
    const-string v0, "VzwLocation"

    const-string v1, "VzwLocation writeToParcel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 308
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 309
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 310
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 311
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 312
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 313
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 314
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 315
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 316
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 317
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 318
    return-void
.end method
