.class public Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
.super Ljava/lang/Object;
.source "DynamicMenuItemInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/internal/DynamicMenuItemInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaData"
.end annotation


# instance fields
.field private final mRemoveIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->mRemoveIdList:Ljava/util/ArrayList;

    .line 117
    return-void
.end method


# virtual methods
.method public addRemoveId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 131
    if-lez p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->mRemoveIdList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    return-void
.end method

.method public getRemoveIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->mRemoveIdList:Ljava/util/ArrayList;

    return-object v0
.end method
