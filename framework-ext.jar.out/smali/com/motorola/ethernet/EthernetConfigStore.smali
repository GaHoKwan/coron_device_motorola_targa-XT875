.class Lcom/motorola/ethernet/EthernetConfigStore;
.super Ljava/lang/Object;
.source "EthernetConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ethernet/EthernetConfigStore$1;
    }
.end annotation


# static fields
.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final IPCONFIG_FILE_VERSION:I = 0x2

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "EthernetConfigStore"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/ethernet/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method

.method private static addIpSettingsFromConfig(Landroid/net/LinkProperties;Lcom/motorola/ethernet/EthernetConfiguration;)V
    .locals 5
    .parameter "linkProperties"
    .parameter "config"

    .prologue
    .line 378
    iget-object v4, p1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 379
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {p0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_0

    .line 381
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_0
    iget-object v4, p1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 382
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {p0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_1

    .line 384
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_1
    iget-object v4, p1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 385
    .local v0, dns:Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 387
    .end local v0           #dns:Ljava/net/InetAddress;
    :cond_2
    return-void
.end method

.method public static checkCableState(Ljava/lang/String;)Z
    .locals 12
    .parameter "ifname"

    .prologue
    const/4 v8, 0x0

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/class/net/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/carrier"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_1

    .line 214
    const-string v9, "EthernetConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t read cable status file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return v8

    .line 218
    :cond_1
    const/4 v7, 0x0

    .line 220
    .local v7, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    const-string v9, "r"

    invoke-direct {v7, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    if-eqz v7, :cond_0

    .line 229
    const/16 v9, 0x10

    new-array v0, v9, [B

    .line 230
    .local v0, buf:[B
    aput-byte v8, v0, v8

    .line 232
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 233
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    const/4 v7, 0x0

    .line 238
    if-eqz v7, :cond_2

    .line 240
    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 247
    :cond_2
    :goto_1
    const-wide/16 v5, 0x0

    .line 248
    .local v5, num:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v9, v0

    if-ge v4, v9, :cond_3

    .line 249
    aget-byte v9, v0, v4

    const/16 v10, 0x30

    if-lt v9, v10, :cond_3

    aget-byte v9, v0, v4

    const/16 v10, 0x39

    if-le v9, v10, :cond_5

    .line 256
    :cond_3
    const-string v9, "EthernetConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading cable status in file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-nez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 221
    .end local v0           #buf:[B
    .end local v4           #i:I
    .end local v5           #num:J
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/io/IOException;
    const-string v9, "EthernetConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception opening cable status file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 236
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_3
    const-string v9, "EthernetConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception reading cable status from file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    if-eqz v7, :cond_2

    .line 240
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 241
    :catch_2
    move-exception v1

    .line 242
    const-string v9, "EthernetConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception closing file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 238
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_4

    .line 240
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 238
    :cond_4
    :goto_4
    throw v8

    .line 252
    .restart local v4       #i:I
    .restart local v5       #num:J
    :cond_5
    const-wide/16 v9, 0xa

    mul-long/2addr v5, v9

    .line 253
    aget-byte v9, v0, v4

    add-int/lit8 v9, v9, -0x30

    int-to-long v9, v9

    add-long/2addr v5, v9

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 241
    .end local v4           #i:I
    .end local v5           #num:J
    :catch_3
    move-exception v1

    .line 242
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "EthernetConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception closing file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 241
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 242
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "EthernetConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception closing file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

.method static clearIpConfiguration()V
    .locals 2

    .prologue
    .line 160
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 164
    .local v0, proxy:Landroid/net/ProxyProperties;
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 165
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 167
    :cond_0
    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dump()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, LS:Ljava/lang/String;
    const-string v2, "sEthernetConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v2, "ipConfigFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized getConfiguration()Lcom/motorola/ethernet/EthernetConfiguration;
    .locals 3

    .prologue
    .line 86
    const-class v1, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/motorola/ethernet/EthernetConfiguration;

    sget-object v2, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-direct {v0, v2}, Lcom/motorola/ethernet/EthernetConfiguration;-><init>(Lcom/motorola/ethernet/EthernetConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getIpConfiguration()Landroid/net/DhcpInfoInternal;
    .locals 9

    .prologue
    .line 120
    const-class v8, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v8

    :try_start_0
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 121
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {}, Lcom/motorola/ethernet/EthernetConfigStore;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 123
    .local v5, linkProperties:Landroid/net/LinkProperties;
    if-eqz v5, :cond_1

    .line 124
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 127
    .local v4, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 128
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 129
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v0, v6}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    .end local v6           #route:Landroid/net/RouteInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 131
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .restart local v4       #linkAddress:Landroid/net/LinkAddress;
    .restart local v5       #linkProperties:Landroid/net/LinkProperties;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v7

    iput v7, v0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 132
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_1
    monitor-exit v8

    return-object v0
.end method

.method static declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 4

    .prologue
    .line 103
    const-class v2, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 105
    .local v0, linkProperties:Landroid/net/LinkProperties;
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    sget-object v3, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->STATIC:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    if-eq v1, v3, :cond_0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit v2

    return-object v0

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized getProxyProperties()Landroid/net/ProxyProperties;
    .locals 4

    .prologue
    .line 175
    const-class v2, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    sget-object v3, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->STATIC:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    if-ne v1, v3, :cond_0

    .line 177
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v0, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 178
    .local v0, linkProperties:Landroid/net/LinkProperties;
    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 72
    const-class v1, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/motorola/ethernet/EthernetConfigStore;->sContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-direct {v0}, Lcom/motorola/ethernet/EthernetConfiguration;-><init>()V

    sput-object v0, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    .line 74
    invoke-static {}, Lcom/motorola/ethernet/EthernetConfigStore;->isConfigFileExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/motorola/ethernet/EthernetConfigStore;->readIpAndProxyConfigurations()V

    .line 79
    :goto_0
    const-string v0, "EthernetConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading ethernet config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v1

    return-void

    .line 77
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/ethernet/EthernetConfigStore;->writeIpAndProxyConfigurations()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isConfigFileExisting()Z
    .locals 8

    .prologue
    .line 604
    const-class v5, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v5

    const/4 v3, 0x0

    .line 605
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 607
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    sget-object v7, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 610
    .end local v1           #in:Ljava/io/DataInputStream;
    .local v2, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 611
    const/4 v3, 0x1

    .line 619
    :goto_0
    if-eqz v2, :cond_0

    .line 621
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_1
    move-object v1, v2

    .line 625
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_2
    monitor-exit v5

    return v3

    .line 613
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :cond_2
    :try_start_3
    const-string v4, "EthernetConfigStore"

    const-string v6, "Bad version on IP configuration file, ignore check"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 615
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 619
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :goto_3
    if-eqz v1, :cond_1

    .line 621
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 622
    :catch_1
    move-exception v4

    goto :goto_2

    .line 616
    :catch_2
    move-exception v0

    .line 617
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v4, "EthernetConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 619
    if-eqz v1, :cond_1

    .line 621
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 604
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    monitor-exit v5

    throw v4

    .line 619
    :catchall_1
    move-exception v4

    :goto_6
    if-eqz v1, :cond_3

    .line 621
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 619
    :cond_3
    :goto_7
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 622
    :catch_3
    move-exception v6

    goto :goto_7

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    goto :goto_1

    .line 619
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_6

    .line 616
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_4

    .line 615
    :catch_6
    move-exception v4

    goto :goto_3

    .line 604
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_5
.end method

.method static declared-synchronized isUsingStaticIp()Z
    .locals 3

    .prologue
    .line 191
    const-class v1, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    sget-object v2, Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;->STATIC:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 658
    array-length v1, p1

    .line 660
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 662
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 663
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    .end local v0           #i:I
    :goto_1
    return v0

    .line 662
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_1
    const-string v2, "EthernetConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to look-up a string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 639
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 643
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 645
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 646
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 654
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static declared-synchronized readIpAndProxyConfigurations()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    .line 513
    const-class v12, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v12

    const/4 v4, 0x0

    .line 515
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    sget-object v14, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 518
    .end local v4           #in:Ljava/io/DataInputStream;
    .local v5, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_2

    .line 519
    const-string v11, "EthernetConfigStore"

    const-string v13, "Bad version on IP configuration file, ignore read"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 595
    if-eqz v5, :cond_0

    .line 597
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v4, v5

    .line 601
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    monitor-exit v12

    return-void

    .line 522
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :cond_2
    :try_start_3
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    if-nez v11, :cond_3

    .line 523
    new-instance v11, Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-direct {v11}, Lcom/motorola/ethernet/EthernetConfiguration;-><init>()V

    sput-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    .line 527
    :cond_3
    :goto_2
    :pswitch_0
    const/4 v8, 0x0

    .line 528
    .local v8, proxyHost:Ljava/lang/String;
    const/4 v9, -0x1

    .line 529
    .local v9, proxyPort:I
    const/4 v2, 0x0

    .line 533
    .local v2, exclusionList:Ljava/lang/String;
    :goto_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    .line 535
    .local v6, key:Ljava/lang/String;
    :try_start_4
    const-string v11, "ipAssignment"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 536
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-result-object v13

    iput-object v13, v11, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v11, "EthernetConfigStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignore invalid address while reading"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 591
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #exclusionList:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #proxyHost:Ljava/lang/String;
    .end local v9           #proxyPort:I
    :catch_1
    move-exception v11

    move-object v4, v5

    .line 595
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_4
    if-eqz v4, :cond_1

    .line 597
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 598
    :catch_2
    move-exception v11

    goto :goto_1

    .line 537
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v2       #exclusionList:Ljava/lang/String;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #proxyHost:Ljava/lang/String;
    .restart local v9       #proxyPort:I
    :cond_4
    :try_start_7
    const-string v11, "linkAddress"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 538
    new-instance v7, Landroid/net/LinkAddress;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-direct {v7, v11, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 540
    .local v7, linkAddr:Landroid/net/LinkAddress;
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v11, v11, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 592
    .end local v2           #exclusionList:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #linkAddr:Landroid/net/LinkAddress;
    .end local v8           #proxyHost:Ljava/lang/String;
    .end local v9           #proxyPort:I
    :catch_3
    move-exception v1

    move-object v4, v5

    .line 593
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_5
    :try_start_8
    const-string v11, "EthernetConfigStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error parsing configuration"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 595
    if-eqz v4, :cond_1

    .line 597
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 513
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 541
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v2       #exclusionList:Ljava/lang/String;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #proxyHost:Ljava/lang/String;
    .restart local v9       #proxyPort:I
    :cond_5
    :try_start_a
    const-string v11, "gateway"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, dest:Landroid/net/LinkAddress;
    const/4 v3, 0x0

    .line 544
    .local v3, gateway:Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    if-ne v11, v15, :cond_6

    .line 545
    new-instance v0, Landroid/net/LinkAddress;

    .end local v0           #dest:Landroid/net/LinkAddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-direct {v0, v11, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 548
    .restart local v0       #dest:Landroid/net/LinkAddress;
    :cond_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    if-ne v11, v15, :cond_7

    .line 549
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 551
    :cond_7
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v11, v11, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    new-instance v13, Landroid/net/RouteInfo;

    invoke-direct {v13, v0, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v11, v13}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    .line 595
    .end local v0           #dest:Landroid/net/LinkAddress;
    .end local v2           #exclusionList:Ljava/lang/String;
    .end local v3           #gateway:Ljava/net/InetAddress;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #proxyHost:Ljava/lang/String;
    .end local v9           #proxyPort:I
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_6
    if-eqz v4, :cond_8

    .line 597
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 595
    :cond_8
    :goto_7
    :try_start_c
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 552
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v2       #exclusionList:Ljava/lang/String;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #proxyHost:Ljava/lang/String;
    .restart local v9       #proxyPort:I
    :cond_9
    :try_start_d
    const-string v11, "dns"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 553
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v11, v11, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_3

    .line 555
    :cond_a
    const-string v11, "proxySettings"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 556
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-result-object v13

    iput-object v13, v11, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    goto/16 :goto_3

    .line 557
    :cond_b
    const-string v11, "proxyHost"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 558
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 559
    :cond_c
    const-string v11, "proxyPort"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 560
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    goto/16 :goto_3

    .line 561
    :cond_d
    const-string v11, "exclusionList"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 562
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 563
    :cond_e
    const-string v11, "eos"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move-result v11

    if-eqz v11, :cond_f

    .line 573
    :try_start_e
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore$1;->$SwitchMap$com$motorola$ethernet$EthernetConfiguration$ProxySettings:[I

    sget-object v13, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v13, v13, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_0

    .line 586
    const-string v11, "EthernetConfigStore"

    const-string v13, "Ignore invalid proxy settings while reading"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_2

    .line 566
    :cond_f
    :try_start_f
    const-string v11, "EthernetConfigStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignore unknown key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "while reading"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_3

    .line 578
    :pswitch_1
    :try_start_10
    new-instance v10, Landroid/net/ProxyProperties;

    invoke-direct {v10, v8, v9, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    .local v10, proxyProperties:Landroid/net/ProxyProperties;
    sget-object v11, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v11, v11, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11, v10}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_2

    .line 598
    .end local v2           #exclusionList:Ljava/lang/String;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #proxyHost:Ljava/lang/String;
    .end local v9           #proxyPort:I
    .end local v10           #proxyProperties:Landroid/net/ProxyProperties;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v13

    goto/16 :goto_7

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v11

    goto/16 :goto_0

    .line 595
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v11

    goto/16 :goto_6

    .line 592
    :catch_6
    move-exception v1

    goto/16 :goto_5

    .line 591
    :catch_7
    move-exception v11

    goto/16 :goto_4

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    .line 630
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized saveConfiguration(Lcom/motorola/ethernet/EthernetConfiguration;)Z
    .locals 4
    .parameter "config"

    .prologue
    .line 93
    const-class v1, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v1

    :try_start_0
    const-string v0, "EthernetConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save ethernet config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-static {v0, p0}, Lcom/motorola/ethernet/EthernetConfigStore;->saveConfigurationOnChange(Lcom/motorola/ethernet/EthernetConfiguration;Lcom/motorola/ethernet/EthernetConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized saveConfigurationOnChange(Lcom/motorola/ethernet/EthernetConfiguration;Lcom/motorola/ethernet/EthernetConfiguration;)V
    .locals 21
    .parameter "currentConfig"
    .parameter "newConfig"

    .prologue
    .line 265
    const-class v18, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v18

    const/4 v2, 0x0

    .line 266
    .local v2, configChangedFlags:I
    const/4 v8, 0x0

    .line 267
    .local v8, ipChanged:Z
    const/4 v15, 0x0

    .line 268
    .local v15, proxyChanged:Z
    :try_start_0
    new-instance v10, Landroid/net/LinkProperties;

    invoke-direct {v10}, Landroid/net/LinkProperties;-><init>()V

    .line 270
    .local v10, linkProperties:Landroid/net/LinkProperties;
    sget-object v17, Lcom/motorola/ethernet/EthernetConfigStore$1;->$SwitchMap$com$motorola$ethernet$EthernetConfiguration$IpAssignment:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v17, v17, v19

    packed-switch v17, :pswitch_data_0

    .line 308
    const-string v17, "EthernetConfigStore"

    const-string v19, "Ignore invalid ip assignment during write"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v17, Lcom/motorola/ethernet/EthernetConfigStore$1;->$SwitchMap$com$motorola$ethernet$EthernetConfiguration$ProxySettings:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v17, v17, v19

    packed-switch v17, :pswitch_data_1

    .line 338
    const-string v17, "EthernetConfigStore"

    const-string v19, "Ignore invalid proxy configuration during write"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    :goto_1
    :pswitch_1
    if-nez v8, :cond_2

    if-eqz v15, :cond_3

    .line 343
    :cond_2
    const-string v17, "EthernetConfigStore"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The current ethernet configuration: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_3
    if-nez v8, :cond_13

    .line 347
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/motorola/ethernet/EthernetConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Lcom/motorola/ethernet/EthernetConfiguration;)V

    .line 356
    :goto_2
    if-nez v15, :cond_14

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 369
    :cond_4
    :goto_3
    if-nez v8, :cond_5

    if-eqz v15, :cond_6

    .line 370
    :cond_5
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 371
    invoke-static {}, Lcom/motorola/ethernet/EthernetConfigStore;->writeIpAndProxyConfigurations()V

    .line 372
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetConfigStore;->sendConfiguredNetworksChangedBroadcast(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_6
    monitor-exit v18

    return-void

    .line 272
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    .line 274
    .local v5, currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v13

    .line 276
    .local v13, newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 277
    .local v3, currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    .line 278
    .local v11, newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    .line 279
    .local v6, currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v14

    .line 281
    .local v14, newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    invoke-interface {v5, v13}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_c

    :cond_7
    const/4 v9, 0x1

    .line 284
    .local v9, linkAddressesDiffer:Z
    :goto_4
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    invoke-interface {v3, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_d

    :cond_8
    const/4 v7, 0x1

    .line 286
    .local v7, dnsesDiffer:Z
    :goto_5
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    invoke-interface {v6, v14}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_e

    :cond_9
    const/16 v16, 0x1

    .line 289
    .local v16, routesDiffer:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 290
    or-int/lit8 v2, v2, 0x1

    .line 291
    const/4 v8, 0x1

    .line 293
    :cond_a
    if-nez v9, :cond_b

    if-nez v7, :cond_b

    if-eqz v16, :cond_0

    .line 294
    :cond_b
    or-int/lit8 v2, v2, 0x2

    .line 295
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 281
    .end local v7           #dnsesDiffer:Z
    .end local v9           #linkAddressesDiffer:Z
    .end local v16           #routesDiffer:Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_4

    .line 284
    .restart local v9       #linkAddressesDiffer:Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_5

    .line 286
    .restart local v7       #dnsesDiffer:Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_6

    .line 299
    .end local v3           #currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v5           #currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v6           #currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v7           #dnsesDiffer:Z
    .end local v9           #linkAddressesDiffer:Z
    .end local v11           #newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v13           #newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v14           #newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 300
    or-int/lit8 v2, v2, 0x1

    .line 301
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 316
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 317
    or-int/lit8 v2, v2, 0x3

    .line 318
    const/4 v15, 0x1

    .line 319
    goto/16 :goto_1

    .line 322
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 323
    .local v12, newHttpProxy:Landroid/net/ProxyProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 325
    .local v4, currentHttpProxy:Landroid/net/ProxyProperties;
    if-eqz v12, :cond_11

    .line 326
    invoke-virtual {v12, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    const/4 v15, 0x1

    .line 330
    :goto_7
    if-eqz v15, :cond_1

    .line 331
    or-int/lit8 v2, v2, 0x3

    goto/16 :goto_1

    .line 326
    :cond_10
    const/4 v15, 0x0

    goto :goto_7

    .line 328
    :cond_11
    if-eqz v4, :cond_12

    const/4 v15, 0x1

    :goto_8
    goto :goto_7

    :cond_12
    const/4 v15, 0x0

    goto :goto_8

    .line 349
    .end local v4           #currentHttpProxy:Landroid/net/ProxyProperties;
    .end local v12           #newHttpProxy:Landroid/net/ProxyProperties;
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    .line 350
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/motorola/ethernet/EthernetConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Lcom/motorola/ethernet/EthernetConfiguration;)V

    .line 351
    const-string v17, "EthernetConfigStore"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ethernet ip config changed, ipAssignment: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " linkProperties: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 265
    .end local v10           #linkProperties:Landroid/net/LinkProperties;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 359
    .restart local v10       #linkProperties:Landroid/net/LinkProperties;
    :cond_14
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    .line 361
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 363
    const-string v17, "EthernetConfigStore"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ethernet proxy settings changed, proxySettings: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 365
    const-string v17, "EthernetConfigStore"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " proxyProperties: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 312
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static sendConfiguredNetworksChangedBroadcast(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.net.ethernet.ETH_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    const-string v1, "ethConfigChangedFlags"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method static declared-synchronized setIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .locals 3
    .parameter "dhcpInfo"

    .prologue
    .line 146
    const-class v2, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 148
    .local v0, linkProperties:Landroid/net/LinkProperties;
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 149
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v1, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 152
    :cond_0
    sget-object v1, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iput-object v0, v1, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v2

    return-void

    .line 146
    .end local v0           #linkProperties:Landroid/net/LinkProperties;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized writeIpAndProxyConfigurations()V
    .locals 19

    .prologue
    .line 401
    const-class v16, Lcom/motorola/ethernet/EthernetConfigStore;

    monitor-enter v16

    :try_start_0
    new-instance v5, Ljava/io/File;

    sget-object v15, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v5, file:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 403
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 404
    .local v2, dir:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 405
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_0

    .line 406
    const-string v15, "EthernetConfigStore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can\'t create dirs for file: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v2           #dir:Ljava/io/File;
    :cond_0
    const-string v15, "EthernetConfigStore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The changed ethernet configuration: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    const/4 v10, 0x0

    .line 415
    .local v10, out:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v17, Ljava/io/FileOutputStream;

    sget-object v18, Lcom/motorola/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 418
    .end local v10           #out:Ljava/io/DataOutputStream;
    .local v11, out:Ljava/io/DataOutputStream;
    const/4 v15, 0x2

    :try_start_2
    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 420
    const/4 v14, 0x0

    .line 423
    .local v14, writeToFile:Z
    :try_start_3
    sget-object v15, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v9, v15, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 424
    .local v9, linkProperties:Landroid/net/LinkProperties;
    sget-object v15, Lcom/motorola/ethernet/EthernetConfigStore$1;->$SwitchMap$com$motorola$ethernet$EthernetConfiguration$IpAssignment:[I

    sget-object v17, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_0

    .line 465
    const-string v15, "EthernetConfigStore"

    const-string v17, "Ignore invalid ip assignment while writing"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    :pswitch_0
    sget-object v15, Lcom/motorola/ethernet/EthernetConfigStore$1;->$SwitchMap$com$motorola$ethernet$EthernetConfiguration$ProxySettings:[I

    sget-object v17, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_1

    .line 490
    const-string v15, "EthernetConfigStore"

    const-string v17, "Ignore invalid proxy settings while writing"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_1
    :pswitch_1
    if-eqz v14, :cond_1

    .line 494
    const-string v15, "EthernetConfigStore"

    const-string v17, "Ethernet ipconfig file is changed."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 499
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :cond_1
    :goto_2
    :try_start_4
    const-string v15, "eos"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 504
    if-eqz v11, :cond_2

    .line 506
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FilterOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_3
    move-object v10, v11

    .line 510
    .end local v11           #out:Ljava/io/DataOutputStream;
    .end local v14           #writeToFile:Z
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :cond_3
    :goto_4
    monitor-exit v16

    return-void

    .line 426
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    .restart local v14       #writeToFile:Z
    :pswitch_2
    :try_start_6
    const-string v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 427
    sget-object v15, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v15, v15, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    invoke-virtual {v15}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 429
    .local v8, linkAddr:Landroid/net/LinkAddress;
    const-string v15, "linkAddress"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 496
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #linkAddr:Landroid/net/LinkAddress;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :catch_0
    move-exception v3

    .line 497
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v15, "EthernetConfigStore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failure in writing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 501
    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v14           #writeToFile:Z
    :catch_1
    move-exception v3

    move-object v10, v11

    .line 502
    .end local v11           #out:Ljava/io/DataOutputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :goto_6
    :try_start_8
    const-string v15, "EthernetConfigStore"

    const-string v17, "Error writing data file"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 504
    if-eqz v10, :cond_3

    .line 506
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FilterOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 507
    :catch_2
    move-exception v15

    goto :goto_4

    .line 433
    .end local v3           #e:Ljava/io/IOException;
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    .restart local v14       #writeToFile:Z
    :cond_4
    :try_start_a
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 434
    .local v13, route:Landroid/net/RouteInfo;
    const-string v15, "gateway"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v1

    .line 436
    .local v1, dest:Landroid/net/LinkAddress;
    if-eqz v1, :cond_6

    .line 437
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 438
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 443
    :goto_8
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 444
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 445
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_7

    .line 504
    .end local v1           #dest:Landroid/net/LinkAddress;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    .end local v13           #route:Landroid/net/RouteInfo;
    .end local v14           #writeToFile:Z
    :catchall_0
    move-exception v15

    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :goto_9
    if-eqz v10, :cond_5

    .line 506
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FilterOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 504
    :cond_5
    :goto_a
    :try_start_c
    throw v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 401
    .end local v10           #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    .line 441
    .restart local v1       #dest:Landroid/net/LinkAddress;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    .restart local v13       #route:Landroid/net/RouteInfo;
    .restart local v14       #writeToFile:Z
    :cond_6
    const/4 v15, 0x0

    :try_start_d
    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8

    .line 447
    :cond_7
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_7

    .line 450
    .end local v1           #dest:Landroid/net/LinkAddress;
    .end local v13           #route:Landroid/net/RouteInfo;
    :cond_8
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 451
    .local v7, inetAddr:Ljava/net/InetAddress;
    const-string v15, "dns"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_b

    .line 454
    .end local v7           #inetAddr:Ljava/net/InetAddress;
    :cond_9
    const/4 v14, 0x1

    .line 455
    goto/16 :goto_0

    .line 457
    .end local v6           #i$:Ljava/util/Iterator;
    :pswitch_3
    const-string v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 458
    sget-object v15, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v15, v15, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    invoke-virtual {v15}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 459
    const/4 v14, 0x1

    .line 460
    goto/16 :goto_0

    .line 474
    :pswitch_4
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 475
    .local v12, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, exclusionList:Ljava/lang/String;
    const-string v15, "proxySettings"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 477
    sget-object v15, Lcom/motorola/ethernet/EthernetConfigStore;->sEthernetConfiguration:Lcom/motorola/ethernet/EthernetConfiguration;

    iget-object v15, v15, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    invoke-virtual {v15}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 478
    const-string v15, "proxyHost"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 480
    const-string v15, "proxyPort"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getPort()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 482
    const-string v15, "exclusionList"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 484
    const/4 v14, 0x1

    .line 485
    goto/16 :goto_1

    .line 507
    .end local v4           #exclusionList:Ljava/lang/String;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    .end local v11           #out:Ljava/io/DataOutputStream;
    .end local v12           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v14           #writeToFile:Z
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v17

    goto/16 :goto_a

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    .restart local v14       #writeToFile:Z
    :catch_4
    move-exception v15

    goto/16 :goto_3

    .line 504
    .end local v11           #out:Ljava/io/DataOutputStream;
    .end local v14           #writeToFile:Z
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v15

    goto/16 :goto_9

    .line 501
    :catch_5
    move-exception v3

    goto/16 :goto_6

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
