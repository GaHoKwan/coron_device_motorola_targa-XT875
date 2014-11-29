.class public final Lcom/motorola/checkinwrapper/CheckinEventWrapper;
.super Ljava/lang/Object;
.source "CheckinEventWrapper.java"


# instance fields
.field e1:Lcom/motorola/data/event/api/Event;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "segmentName"
    .parameter "version"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    .line 71
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "tag"
    .parameter "segmentName"
    .parameter "version"
    .parameter "timestamp"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    .line 59
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    .line 60
    return-void
.end method


# virtual methods
.method public addSegment(Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;)V
    .locals 2
    .parameter "wrappedSegment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/motorola/checkinwrapper/CheckinSegmentWrapper;->getSegment()Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, segment:Ljava/lang/Object;
    iget-object v1, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    check-cast v0, Lcom/motorola/data/event/api/Segment;

    .end local v0           #segment:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/motorola/data/event/api/Event;->addSegment(Lcom/motorola/data/event/api/Segment;)V

    .line 47
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getEventName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getHeaderAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

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
    .line 123
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getNVAttributes()Ljava/util/Map;

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
    .line 132
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getPositionBasedAttributes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/data/event/api/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getSegments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationType()Lcom/motorola/data/event/api/IEvent$Serialization;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getSerializationType()Lcom/motorola/data/event/api/IEvent$Serialization;

    move-result-object v0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/Object;)V
    .locals 1
    .parameter "contentResolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1}, Lcom/motorola/data/event/api/Event;->publish(Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method public serializeEvent()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0}, Lcom/motorola/data/event/api/Event;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderAttribute(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 169
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setHeaderAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
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
    .line 315
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Event;->setValue(ID)V

    .line 316
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
    .line 279
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(II)V

    .line 280
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
    .line 291
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Event;->setValue(IJ)V

    .line 292
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
    .line 303
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(ILjava/lang/String;)V

    .line 304
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
    .line 344
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(ILjava/util/ArrayList;)V

    .line 345
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
    .line 362
    .local p2, value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(ILjava/util/HashMap;)V

    .line 363
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
    .line 327
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(IZ)V

    .line 328
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
    .line 223
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;D)V

    .line 224
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
    .line 201
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V

    .line 202
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
    .line 190
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 191
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
    .line 212
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
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
    .line 250
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 251
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
    .line 266
    .local p2, value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 267
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
    .line 234
    iget-object v0, p0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->e1:Lcom/motorola/data/event/api/Event;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Z)V

    .line 235
    return-void
.end method
