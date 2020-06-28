.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$2;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$mediaPath:Ljava/lang/String;

.field final synthetic val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 5

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 426
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mediaPath = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v6, 0x0

    .line 428
    .local v6, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 429
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x1000

    new-array v3, v14, [B

    .line 433
    .local v3, "buf":[B
    :try_start_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$100(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v6

    .line 434
    :goto_3a
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "read":I
    if-lez v9, :cond_6f

    .line 435
    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_44
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_28 .. :try_end_44} :catch_45
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_44} :catch_f3
    .catchall {:try_start_28 .. :try_end_44} :catchall_15d

    goto :goto_3a

    .line 438
    .end local v9    # "read":I
    :catch_45
    move-exception v5

    .line 439
    .local v5, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :try_start_46
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PERMISSION_DENIED:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_15d

    .line 454
    if-eqz v6, :cond_69

    .line 456
    :try_start_66
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_e9

    .line 462
    .end local v5    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :cond_69
    :goto_69
    const/4 v6, 0x0

    .line 464
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_266

    .line 468
    :goto_6d
    const/4 v2, 0x0

    .line 521
    :cond_6e
    :goto_6e
    return-void

    .line 437
    .restart local v9    # "read":I
    :cond_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_72
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_6f .. :try_end_72} :catch_45
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_f3
    .catchall {:try_start_6f .. :try_end_72} :catchall_15d

    move-result-object v3

    .line 454
    if-eqz v6, :cond_78

    .line 456
    :try_start_75
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_e0

    .line 462
    :cond_78
    :goto_78
    const/4 v6, 0x0

    .line 464
    :try_start_79
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_263

    .line 468
    :goto_7c
    const/4 v2, 0x0

    .line 470
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 471
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    array-length v9, v3

    .line 472
    const/4 v3, 0x0

    .line 474
    :try_start_84
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    invoke-static {v14, v1, v15}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$200(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 476
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 477
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v1, v15, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$300(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v8, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 491
    .local v8, "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 492
    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_ca

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_174

    .line 493
    :cond_ca
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v14, v8}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_d1} :catch_22d
    .catchall {:try_start_84 .. :try_end_d1} :catchall_251

    .line 512
    if-eqz v1, :cond_6e

    .line 514
    :try_start_d3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_6e

    .line 515
    :catch_d7
    move-exception v5

    .line 517
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 457
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_e0
    move-exception v5

    .line 459
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78

    .line 457
    .end local v9    # "read":I
    .local v5, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_e9
    move-exception v5

    .line 459
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_69

    .line 441
    .end local v5    # "e":Ljava/io/IOException;
    :catch_f3
    move-exception v5

    .line 442
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    sget-object v15, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    if-ne v14, v15, :cond_136

    .line 444
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    .line 445
    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1080066

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 447
    .local v4, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v14, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_121
    .catchall {:try_start_f4 .. :try_end_121} :catchall_15d

    .line 454
    if-eqz v6, :cond_126

    .line 456
    :try_start_123
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_12d

    .line 462
    :cond_126
    :goto_126
    const/4 v6, 0x0

    .line 464
    :try_start_127
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_269

    .line 468
    :goto_12a
    const/4 v2, 0x0

    .line 448
    goto/16 :goto_6e

    .line 457
    :catch_12d
    move-exception v5

    .line 459
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_126

    .line 450
    .end local v4    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_136
    :try_start_136
    const-string v14, "MediaUtil"

    const-string v15, "IOException reading file."

    invoke-static {v14, v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_136 .. :try_end_148} :catchall_15d

    .line 454
    if-eqz v6, :cond_14d

    .line 456
    :try_start_14a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_154

    .line 462
    :cond_14d
    :goto_14d
    const/4 v6, 0x0

    .line 464
    :try_start_14e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_26c

    .line 468
    :goto_151
    const/4 v2, 0x0

    .line 452
    goto/16 :goto_6e

    .line 457
    :catch_154
    move-exception v5

    .line 459
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14d

    .line 454
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_15d
    move-exception v14

    if-eqz v6, :cond_163

    .line 456
    :try_start_160
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_169

    .line 462
    :cond_163
    :goto_163
    const/4 v6, 0x0

    .line 464
    :try_start_164
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_26f

    .line 468
    :goto_167
    const/4 v2, 0x0

    throw v14

    .line 457
    :catch_169
    move-exception v5

    .line 459
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v15, "MediaUtil"

    const-string v16, "Unexpected error on close"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_163

    .line 496
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "read":I
    :cond_174
    :try_start_174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v13, v14

    .line 497
    .local v13, "scaledWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v12, v14

    .line 498
    .local v12, "scaledHeight":I
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "form.deviceDensity() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "originalBitmapDrawable.getIntrinsicWidth() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "originalBitmapDrawable.getIntrinsicHeight() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v13, v12, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 503
    .local v10, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v11, v14, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 504
    .local v11, "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 505
    const/4 v8, 0x0

    .line 506
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v14, v11}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_21c} :catch_22d
    .catchall {:try_start_174 .. :try_end_21c} :catchall_251

    .line 512
    if-eqz v1, :cond_6e

    .line 514
    :try_start_21e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_221} :catch_223

    goto/16 :goto_6e

    .line 515
    :catch_223
    move-exception v5

    .line 517
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6e

    .line 508
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "scaledHeight":I
    .end local v13    # "scaledWidth":I
    :catch_22d
    move-exception v5

    .line 509
    .local v5, "e":Ljava/lang/Exception;
    :try_start_22e
    const-string v14, "MediaUtil"

    const-string v15, "Exception while loading media."

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_240
    .catchall {:try_start_22e .. :try_end_240} :catchall_251

    .line 512
    if-eqz v1, :cond_6e

    .line 514
    :try_start_242
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_245} :catch_247

    goto/16 :goto_6e

    .line 515
    :catch_247
    move-exception v5

    .line 517
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6e

    .line 512
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_251
    move-exception v14

    if-eqz v1, :cond_257

    .line 514
    :try_start_254
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_257
    .catch Ljava/io/IOException; {:try_start_254 .. :try_end_257} :catch_258

    .line 518
    :cond_257
    :goto_257
    throw v14

    .line 515
    :catch_258
    move-exception v5

    .line 517
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v15, "MediaUtil"

    const-string v16, "Unexpected error on close"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_257

    .line 465
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_263
    move-exception v14

    goto/16 :goto_7c

    .end local v9    # "read":I
    :catch_266
    move-exception v14

    goto/16 :goto_6d

    .restart local v4    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_269
    move-exception v14

    goto/16 :goto_12a

    .end local v4    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_26c
    move-exception v14

    goto/16 :goto_151

    .end local v5    # "e":Ljava/io/IOException;
    :catch_26f
    move-exception v15

    goto/16 :goto_167
.end method
