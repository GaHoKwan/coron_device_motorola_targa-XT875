.class Lcom/android/internal/telephony/cdma/RuimRecords$1;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

.field final synthetic val$finalMccMnc:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    iput p2, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->val$finalMccMnc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 937
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$000(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->val$finalMccMnc:I

    invoke-static {v1, v2}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfo(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v0

    .line 938
    .local v0, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    const-string v1, "0"

    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mShowSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/4 v2, -0x1

    #setter for: Lcom/android/internal/telephony/IccRecords;->spnDisplayCondition:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$102(Lcom/android/internal/telephony/cdma/RuimRecords;I)I

    .line 941
    :cond_0
    return-void
.end method
