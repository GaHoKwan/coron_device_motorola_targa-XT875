.class public Lcom/motorola/kpi/Kpi6paTop;
.super Ljava/lang/Object;
.source "Kpi6paTop.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KPI-6PA-TOP"

.field private static final NO_THREADS_INFO:I = 0x0

.field private static final WITH_THREADS_INFO:I = 0x1

.field private static listKpi6paTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/kpi/Kpi6paTop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private numAppend:I

.field private tag:Ljava/lang/String;

.field private topInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private native clearTopInfo()V
.end method

.method private native freeTopInfo()V
.end method

.method public static get(Ljava/lang/String;)Lcom/motorola/kpi/Kpi6paTop;
    .locals 2
    .parameter "tag"

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/Kpi6paTop;

    iget-object v1, v1, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/Kpi6paTop;

    .line 184
    :goto_1
    return-object v1

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static make(Ljava/lang/String;)Lcom/motorola/kpi/Kpi6paTop;
    .locals 3
    .parameter "tag"

    .prologue
    .line 157
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 158
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/kpi/Kpi6paTop;

    iget-object v2, v2, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 159
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/kpi/Kpi6paTop;

    .line 166
    :goto_1
    return-object v2

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Lcom/motorola/kpi/Kpi6paTop;

    invoke-direct {v0, p0}, Lcom/motorola/kpi/Kpi6paTop;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, Kpi6paTop:Lcom/motorola/kpi/Kpi6paTop;
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 166
    goto :goto_1
.end method

.method private native newTopInfo(I)V
.end method

.method private native printTopInfo()V
.end method

.method private native readTopInfo(J)V
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 198
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/Kpi6paTop;

    iget-object v1, v1, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 200
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    const/4 v1, 0x1

    .line 204
    :goto_1
    return v1

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public append()V
    .locals 7

    .prologue
    .line 125
    iget v4, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, start:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/motorola/kpi/Kpi6paTop;->readTopInfo(J)V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 137
    .local v2, time:J
    const-string v4, "KPI-6PA-TOP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Kpi6paTop.append("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to parse /proc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/motorola/kpi/Kpi6paTop;->topInfo:I

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/motorola/kpi/Kpi6paTop;->freeTopInfo()V

    .line 73
    :cond_0
    return-void
.end method

.method public print()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/motorola/kpi/Kpi6paTop;->printTopInfo()V

    .line 146
    return-void
.end method

.method public start(Z)V
    .locals 7
    .parameter "readThreads"

    .prologue
    const/4 v5, 0x0

    .line 91
    iget v4, p0, Lcom/motorola/kpi/Kpi6paTop;->topInfo:I

    if-nez v4, :cond_1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/motorola/kpi/Kpi6paTop;->newTopInfo(I)V

    .line 102
    :goto_0
    iput v5, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, start:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/motorola/kpi/Kpi6paTop;->readTopInfo(J)V

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 114
    .local v2, time:J
    const-string v4, "KPI-6PA-TOP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Kpi6paTop.start("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to parse /proc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 95
    .end local v0           #start:J
    .end local v2           #time:J
    :cond_0
    invoke-direct {p0, v5}, Lcom/motorola/kpi/Kpi6paTop;->newTopInfo(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/motorola/kpi/Kpi6paTop;->clearTopInfo()V

    goto :goto_0
.end method
