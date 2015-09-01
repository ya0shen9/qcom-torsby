.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor <init>(Landroid/hardware/SensorListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 217
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 220
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 222
    return-void
.end method

.method private static getLegacySensorType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 362
    packed-switch p0, :pswitch_data_0

    .line 376
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 364
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 366
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 368
    :pswitch_3
    const/16 v0, 0x80

    goto :goto_0

    .line 370
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 373
    :pswitch_5
    const/16 v0, 0x100

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static hasOrientationSensor(I)Z
    .locals 1
    .parameter "sensors"

    .prologue
    .line 252
    and-int/lit16 v0, p0, 0x81

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 8
    .parameter "sensor"
    .parameter "values"
    .parameter "orientation"

    .prologue
    const/high16 v7, 0x4334

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 296
    aget v0, p2, v4

    .line 297
    .local v0, x:F
    aget v1, p2, v5

    .line 298
    .local v1, y:F
    aget v2, p2, v6

    .line 300
    .local v2, z:F
    sparse-switch p1, :sswitch_data_0

    .line 315
    :goto_0
    aput v0, p2, v4

    .line 316
    aput v1, p2, v5

    .line 317
    aput v2, p2, v6

    .line 318
    const/4 v3, 0x3

    aput v0, p2, v3

    .line 319
    const/4 v3, 0x4

    aput v1, p2, v3

    .line 320
    const/4 v3, 0x5

    aput v2, p2, v3

    .line 322
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    .line 324
    sparse-switch p1, :sswitch_data_1

    .line 339
    :cond_0
    :goto_1
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    .line 340
    aget v0, p2, v4

    .line 341
    aget v1, p2, v5

    .line 342
    aget v2, p2, v6

    .line 344
    sparse-switch p1, :sswitch_data_2

    .line 359
    :cond_1
    :goto_2
    return-void

    .line 303
    :sswitch_0
    neg-float v2, v2

    .line 304
    goto :goto_0

    .line 306
    :sswitch_1
    neg-float v0, v0

    .line 307
    neg-float v1, v1

    .line 308
    neg-float v2, v2

    .line 309
    goto :goto_0

    .line 311
    :sswitch_2
    neg-float v0, v0

    .line 312
    neg-float v1, v1

    goto :goto_0

    .line 327
    :sswitch_3
    neg-float v3, v1

    aput v3, p2, v4

    .line 328
    aput v0, p2, v5

    .line 329
    aput v2, p2, v6

    goto :goto_1

    .line 333
    :sswitch_4
    const/high16 v3, 0x4387

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x5a

    :goto_3
    int-to-float v3, v3

    add-float/2addr v3, v0

    aput v3, p2, v4

    .line 334
    aput v2, p2, v5

    .line 335
    aput v1, p2, v6

    goto :goto_1

    .line 333
    :cond_2
    const/16 v3, -0x10e

    goto :goto_3

    .line 347
    :sswitch_5
    neg-float v3, v0

    aput v3, p2, v4

    .line 348
    neg-float v3, v1

    aput v3, p2, v5

    .line 349
    aput v2, p2, v6

    goto :goto_2

    .line 353
    :sswitch_6
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_3

    sub-float v3, v0, v7

    :goto_4
    aput v3, p2, v4

    .line 354
    neg-float v3, v1

    aput v3, p2, v5

    .line 355
    neg-float v3, v2

    aput v3, p2, v6

    goto :goto_2

    .line 353
    :cond_3
    add-float v3, v0, v7

    goto :goto_4

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x80 -> :sswitch_0
    .end sparse-switch

    .line 324
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x8 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 344
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method hasSensors()Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 266
    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 267
    .local v2, v:[F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    aput v3, v2, v7

    .line 268
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    aput v3, v2, v8

    .line 269
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    aput v3, v2, v4

    .line 270
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 271
    .local v1, type:I
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v0

    .line 272
    .local v0, legacyType:I
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 273
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 274
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 277
    :cond_0
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v6, v2, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result v3

    aput v3, v2, v7

    .line 279
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v8, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v0, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_0
.end method

.method registerSensor(I)Z
    .locals 3
    .parameter "legacyType"

    .prologue
    const/4 v1, 0x0

    .line 225
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    .line 229
    .local v0, alreadyHasOrientationSensor:Z
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v2, p1

    iput v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 230
    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method unregisterSensor(I)Z
    .locals 3
    .parameter "legacyType"

    .prologue
    const/4 v0, 0x0

    .line 237
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 241
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
