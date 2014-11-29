.class Landroid/location/LocationManager$ListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 179
    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 180
    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 182
    if-nez p3, :cond_0

    .line 183
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$ListenerTransport$1;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/location/LocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Landroid/location/LocationManager$ListenerTransport$2;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Looper;Landroid/location/LocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 263
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 283
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    #getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v6}, Landroid/location/LocationManager;->access$100(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v6

    invoke-interface {v6, p0}, Landroid/location/ILocationManager;->locationCallbackFinished(Landroid/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    return-void

    .line 265
    :pswitch_0
    new-instance v3, Landroid/location/Location;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/location/Location;

    invoke-direct {v3, v6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 266
    .local v3, location:Landroid/location/Location;
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v6, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 269
    .end local v3           #location:Landroid/location/Location;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 270
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, provider:Ljava/lang/String;
    const-string/jumbo v6, "status"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 272
    .local v5, status:I
    const-string v6, "extras"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 273
    .local v2, extras:Landroid/os/Bundle;
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v6, v4, v5, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 276
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #provider:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_2
    iget-object v7, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v7, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "LocationManager"

    const-string v7, "locationCallbackFinished: RemoteException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/location/LocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private removeDeadListener()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "LocationManager"

    const-string v1, "handler thread is still alive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v0, "LocationManager"

    const-string v1, "handler thread is dead, removeUpdates()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 202
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-direct {p0}, Landroid/location/LocationManager$ListenerTransport;->removeDeadListener()V

    .line 208
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 241
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-direct {p0}, Landroid/location/LocationManager$ListenerTransport;->removeDeadListener()V

    .line 247
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0}, Landroid/location/LocationManager$ListenerTransport;->removeDeadListener()V

    .line 236
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 212
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "provider"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    if-eqz p3, :cond_0

    .line 217
    const-string v2, "extras"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget-object v2, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    invoke-direct {p0}, Landroid/location/LocationManager$ListenerTransport;->removeDeadListener()V

    .line 225
    :cond_1
    return-void
.end method