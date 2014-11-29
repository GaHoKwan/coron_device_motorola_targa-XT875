.class public Lcom/motorola/android/util/PerfLog;
.super Ljava/lang/Object;
.source "PerfLog.java"


# static fields
.field private static final NANOS_PER_MS:J = 0xf4240L

.field static final PERF_SAMPLES:I = 0x64

.field static final PRINT_TEMP_SIZE:I = 0x50

.field static final TAG:Ljava/lang/String; = "PerfLog"


# instance fields
.field public mEnabled:Z

.field public mId:Ljava/lang/String;

.field mSampleEnd:J

.field mSampleEnds:[J

.field mSampleIndex:I

.field mSampleInfo:Ljava/lang/StringBuilder;

.field mSampleInfos:[Ljava/lang/StringBuilder;

.field mSampleStart:J

.field mSampleStarts:[J

.field mTempPrintStream:Ljava/io/PrintStream;

.field mTempStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide v2, p0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    .line 25
    iput-wide v2, p0, Lcom/motorola/android/util/PerfLog;->mSampleEnd:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    .line 30
    iput v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    .line 31
    iput-boolean v1, p0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addSampleInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 144
    iget-boolean v1, p0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PerfLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error adding sample info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelSample()V
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    .line 97
    iget-object v0, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public enableOnFileExists(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v0, loc1:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local"

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v1, loc2:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    .line 57
    const-string v2, "PerfLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #loc1:Ljava/io/File;
    .end local v1           #loc2:Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public finishSample()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/16 v9, 0x64

    .line 108
    iget-boolean v5, p0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    if-eqz v5, :cond_3

    .line 110
    :try_start_0
    iget-wide v2, p0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    .line 111
    .local v2, astart:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    div-long v0, v5, v7

    .line 112
    .local v0, anow:J
    cmp-long v5, v2, v11

    if-nez v5, :cond_0

    .line 113
    const-string v5, "PerfLog"

    const-string v6, "Performance sample finish without start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iput-wide v0, p0, Lcom/motorola/android/util/PerfLog;->mSampleEnd:J

    .line 117
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    .line 118
    iget-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleStarts:[J

    if-nez v5, :cond_1

    .line 119
    const/16 v5, 0x64

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleStarts:[J

    .line 120
    const/16 v5, 0x64

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleEnds:[J

    .line 121
    const/16 v5, 0x64

    new-array v5, v5, [Ljava/lang/StringBuilder;

    iput-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfos:[Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    iget-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleStarts:[J

    iget v6, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    aput-wide v2, v5, v6

    .line 124
    iget-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleEnds:[J

    iget v6, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    aput-wide v0, v5, v6

    .line 125
    iget-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfos:[Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    iget-object v7, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    aput-object v7, v5, v6

    .line 126
    iget v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    .line 127
    iget v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    if-lt v5, v9, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/motorola/android/util/PerfLog;->flushSamples()V

    .line 131
    :cond_2
    iget-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfos:[Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    .line 132
    iget-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0           #anow:J
    .end local v2           #astart:J
    :cond_3
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, e:Ljava/lang/Exception;
    const-string v5, "PerfLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error collecting performance measurements: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v10, p0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    goto :goto_0
.end method

.method public flushSamples()V
    .locals 30

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    move/from16 v24, v0

    if-lez v24, :cond_5

    .line 164
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    const-wide/32 v26, 0xf4240

    div-long v6, v24, v26

    .line 165
    .local v6, dstart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mTempStream:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 166
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    const/16 v25, 0x50

    invoke-direct/range {v24 .. v25}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/util/PerfLog;->mTempStream:Ljava/io/ByteArrayOutputStream;

    .line 167
    new-instance v24, Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mTempStream:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/util/PerfLog;->mTempPrintStream:Ljava/io/PrintStream;

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/util/PerfLog;->mTempStream:Ljava/io/ByteArrayOutputStream;

    .line 171
    .local v3, bs:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mTempPrintStream:Ljava/io/PrintStream;

    move-object/from16 v21, v0

    .line 172
    .local v21, ps:Ljava/io/PrintStream;
    const-string v24, "PerfLog"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Dumping: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v24, "PerfLog"

    const-string v25, "   Frame, Duration,    Start,      End, Info"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-wide/16 v15, 0x0

    .line 176
    .local v15, max:J
    const-wide/16 v19, 0x0

    .line 177
    .local v19, n:D
    const-wide/16 v17, 0x0

    .line 178
    .local v17, mean:D
    const-wide/16 v13, 0x0

    .line 179
    .local v13, m2:D
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleEnds:[J

    move-object/from16 v24, v0

    aget-wide v24, v24, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleStarts:[J

    move-object/from16 v26, v0

    aget-wide v26, v26, v11

    sub-long v8, v24, v26

    .line 181
    .local v8, duration:J
    const-wide/high16 v24, 0x3ff0

    add-double v19, v19, v24

    .line 182
    long-to-double v0, v8

    move-wide/from16 v24, v0

    sub-double v4, v24, v17

    .line 183
    .local v4, delta:D
    div-double v24, v4, v19

    add-double v17, v17, v24

    .line 184
    long-to-double v0, v8

    move-wide/from16 v24, v0

    sub-double v24, v24, v17

    mul-double v24, v24, v4

    add-double v13, v13, v24

    .line 185
    cmp-long v24, v8, v15

    if-lez v24, :cond_1

    move-wide v15, v8

    .line 186
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 187
    const-string v24, "   %5d, %8d, %8d, %8d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleStarts:[J

    move-object/from16 v27, v0

    aget-wide v27, v27, v11

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleEnds:[J

    move-object/from16 v27, v0

    aget-wide v27, v27, v11

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleInfos:[Ljava/lang/StringBuilder;

    move-object/from16 v24, v0

    aget-object v12, v24, v11

    .line 190
    .local v12, info:Ljava/lang/StringBuilder;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 191
    const-string v24, ", "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 193
    :cond_2
    const-string v24, "\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 194
    const-string v24, "PerfLog"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 196
    .end local v4           #delta:D
    .end local v8           #duration:J
    .end local v12           #info:Ljava/lang/StringBuilder;
    :cond_3
    const-wide/high16 v24, 0x4000

    cmpg-double v24, v19, v24

    if-gez v24, :cond_6

    const-wide/16 v22, 0x0

    .line 198
    .local v22, stddev:D
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 199
    const-string v24, "Average=%.2f, Max=%d, Stddev=%.2f : %s"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 201
    const-string v24, "PerfLog"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    const-wide/32 v28, 0xf4240

    div-long v26, v26, v28

    sub-long v26, v26, v6

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/android/util/PerfLog;->mSampleStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_4
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    .line 213
    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v6           #dstart:J
    .end local v11           #i:I
    .end local v13           #m2:D
    .end local v15           #max:J
    .end local v17           #mean:D
    .end local v19           #n:D
    .end local v21           #ps:Ljava/io/PrintStream;
    .end local v22           #stddev:D
    :cond_5
    :goto_2
    return-void

    .line 196
    .restart local v3       #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #dstart:J
    .restart local v11       #i:I
    .restart local v13       #m2:D
    .restart local v15       #max:J
    .restart local v17       #mean:D
    .restart local v19       #n:D
    .restart local v21       #ps:Ljava/io/PrintStream;
    :cond_6
    const-wide/high16 v24, 0x3ff0

    sub-double v24, v19, v24

    div-double v24, v13, v24

    :try_start_1
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v22

    goto :goto_1

    .line 207
    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v6           #dstart:J
    .end local v11           #i:I
    .end local v13           #m2:D
    .end local v15           #max:J
    .end local v17           #mean:D
    .end local v19           #n:D
    .end local v21           #ps:Ljava/io/PrintStream;
    :catch_0
    move-exception v10

    .line 208
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v24, "PerfLog"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed while writing log: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    goto :goto_2

    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/util/PerfLog;->mSampleIndex:I

    throw v24
.end method

.method public sampleStarted()Z
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSample(JZ)V
    .locals 4
    .parameter "startTime"
    .parameter "restart"

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/android/util/PerfLog;->sampleStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_2

    iget-wide v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_2

    .line 81
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleEnd:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    iget-wide p1, p0, Lcom/motorola/android/util/PerfLog;->mSampleEnd:J

    .end local p1
    :cond_1
    iput-wide p1, p0, Lcom/motorola/android/util/PerfLog;->mSampleStart:J

    .line 83
    iget-object v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/util/PerfLog;->mSampleInfo:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PerfLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error collecting performance measurements: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/util/PerfLog;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/util/PerfLog;->mEnabled:Z

    goto :goto_0
.end method

.method public startSample(Z)V
    .locals 4
    .parameter "restart"

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/util/PerfLog;->startSample(JZ)V

    .line 70
    return-void
.end method
