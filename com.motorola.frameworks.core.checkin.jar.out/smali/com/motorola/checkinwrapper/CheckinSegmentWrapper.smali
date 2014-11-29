.class public Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;
.super Ljava/lang/Object;
.source "CheckinSegmentWrapper.java"


# instance fields
.field segment:Lcom/motorola/data/event/api/Segment;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "segmentName"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    .line 30
    new-instance v0, Lcom/motorola/data/event/api/Segment;

    invoke-direct {v0, p1}, Lcom/motorola/data/event/api/Segment;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    .line 31
    return-void
.end method


# virtual methods
.method public getNVAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Segment;->getNVAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPositionBasedAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Segment;->getPositionBasedAttributes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSegment()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    return-object v0
.end method

.method public setValue(ID)V
    .locals 1
    .parameter "position"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Segment;->setValue(ID)V

    .line 200
    return-void
.end method

.method public setValue(II)V
    .locals 1
    .parameter "position"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(II)V

    .line 164
    return-void
.end method

.method public setValue(IJ)V
    .locals 1
    .parameter "position"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Segment;->setValue(IJ)V

    .line 176
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(ILjava/lang/String;)V

    .line 188
    return-void
.end method

.method public setValue(ILjava/util/ArrayList;)V
    .locals 1
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 228
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(ILjava/util/ArrayList;)V

    .line 229
    return-void
.end method

.method public setValue(ILjava/util/HashMap;)V
    .locals 1
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 246
    .local p2, value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(ILjava/util/HashMap;)V

    .line 247
    return-void
.end method

.method public setValue(IZ)V
    .locals 1
    .parameter "position"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(IZ)V

    .line 212
    return-void
.end method

.method public setValue(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Segment;->setValue(Ljava/lang/String;D)V

    .line 105
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public setValue(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Segment;->setValue(Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 133
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 134
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 151
    .local p2, value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 152
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->segment:Lcom/motorola/data/event/api/Segment;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Segment;->setValue(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method
