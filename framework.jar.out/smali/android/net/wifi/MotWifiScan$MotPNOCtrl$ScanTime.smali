.class Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;
.super Ljava/lang/Object;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan$MotPNOCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanTime"
.end annotation


# instance fields
.field public duration:I

.field public scanCycleTime:I

.field final synthetic this$1:Landroid/net/wifi/MotWifiScan$MotPNOCtrl;


# direct methods
.method public constructor <init>(Landroid/net/wifi/MotWifiScan$MotPNOCtrl;II)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "d"

    .prologue
    .line 759
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->this$1:Landroid/net/wifi/MotWifiScan$MotPNOCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput p2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->scanCycleTime:I

    .line 761
    iput p3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->duration:I

    .line 762
    return-void
.end method
