.class public Lcom/google/appinventor/components/runtime/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaUtil"

.field private static REPL_ASSET_DIR:Ljava/lang/String;

.field private static pathCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .registers 7
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 339
    .local v0, "tempFile":Ljava/io/File;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 340
    :cond_10
    const-string v1, "MediaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temp file..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v0

    .line 342
    const-string v1, "MediaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished copying media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_5d
    return-object v0
.end method

.method public static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 304
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v2

    .line 310
    .local v2, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 312
    .local v1, "file":Ljava/io/File;
    :try_start_5
    const-string v3, "AI_Media_"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 314
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_1a
    .catchall {:try_start_5 .. :try_end_16} :catchall_47

    .line 330
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 315
    return-object v1

    .line 317
    :catch_1a
    move-exception v0

    .line 318
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4c

    .line 319
    :try_start_1d
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 320
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 327
    :goto_46
    throw v0
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_47

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_47
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v3

    .line 323
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_4c
    :try_start_4c
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_47

    goto :goto_46
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 530
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 146
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 147
    :cond_16
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    .line 176
    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :goto_18
    return-object v0

    .line 149
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :cond_19
    const-string v0, "content://contacts/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 150
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_18

    .line 152
    :cond_24
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 153
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_18

    .line 157
    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 160
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_18

    .line 163
    :cond_3f
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    :try_end_41
    .catch Ljava/net/MalformedURLException; {:try_start_2f .. :try_end_41} :catch_42

    goto :goto_18

    .line 165
    :catch_42
    move-exception v0

    .line 169
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_55

    .line 170
    check-cast p0, Lcom/google/appinventor/components/runtime/ReplForm;

    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 171
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_18

    .line 173
    :cond_52
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_18

    .line 176
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :cond_55
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_18
.end method

.method static fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_2d

    move-result-object v1

    return-object v1

    .line 117
    :catch_13
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2d
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 195
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "newPath":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 197
    const/4 v1, 0x0

    .line 201
    .end local v0    # "newPath":Ljava/lang/String;
    :goto_f
    return-object v1

    .line 199
    .restart local v0    # "newPath":Ljava/lang/String;
    :cond_10
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_15
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_f
.end method

.method private static findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "mediaPathlist":[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 216
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_1d

    .line 217
    aget-object v3, v2, v0

    .line 218
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 222
    .end local v3    # "temp":Ljava/lang/String;
    :goto_19
    return-object v3

    .line 216
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 222
    .end local v3    # "temp":Ljava/lang/String;
    :cond_1d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private static getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    .line 618
    :goto_8
    return-object v2

    .line 613
    :catch_9
    move-exception v0

    .line 614
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 616
    throw v0

    .line 618
    :cond_11
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto :goto_8
.end method

.method private static getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    .line 242
    :goto_8
    return-object v2

    .line 237
    :catch_9
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 240
    throw v0

    .line 242
    :cond_11
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_8
.end method

.method public static getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 370
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 395
    :cond_9
    return-object v2

    .line 373
    :cond_a
    new-instance v3, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;-><init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$1;)V

    .line 374
    .local v3, "syncer":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    invoke-direct {v0, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;)V

    .line 384
    .local v0, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 385
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->waitfor()V

    .line 386
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 387
    .local v2, "result":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v2, :cond_9

    .line 388
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->getError()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "error":Ljava/lang/String;
    const-string v4, "PERMISSION_DENIED:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 390
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :cond_3d
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 6
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 412
    :cond_8
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 524
    :goto_c
    return-void

    .line 416
    :cond_d
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v1

    .line 418
    .local v1, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 523
    .local v0, "loadImage":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method private static getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 13
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 561
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 562
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 563
    const/4 v7, 0x0

    invoke-static {p1, v7, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 564
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 565
    .local v2, "imageWidth":I
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 568
    .local v1, "imageHeight":I
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 569
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 579
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 580
    const/16 v4, 0x2d0

    .line 581
    .local v4, "maxWidth":I
    const/16 v3, 0x348

    .line 587
    .local v3, "maxHeight":I
    :goto_26
    const/4 v6, 0x1

    .line 588
    .local v6, "sampleSize":I
    :goto_27
    div-int v7, v2, v6

    if-le v7, v4, :cond_49

    div-int v7, v1, v6

    if-le v7, v3, :cond_49

    .line 589
    mul-int/lit8 v6, v6, 0x2

    goto :goto_27

    .line 583
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    .end local v6    # "sampleSize":I
    :cond_32
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 584
    .restart local v4    # "maxWidth":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v3, v7

    .restart local v3    # "maxHeight":I
    goto :goto_26

    .line 591
    .restart local v6    # "sampleSize":I
    :cond_49
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 592
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    const-string v7, "MediaUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmapOptions: sampleSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mediaPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " display width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 594
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " display height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 592
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 596
    return-object v5
.end method

.method public static isExternalFile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 187
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    .line 185
    :goto_1d
    return v0

    .line 187
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isExternalFileUrl(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "file:///sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    .line 180
    :goto_2a
    return v0

    .line 181
    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .registers 13
    .param p0, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v7

    .line 681
    .local v7, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_a0

    .line 726
    new-instance v0, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load audio or video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :pswitch_2e
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 685
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_32
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 686
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 687
    .local v2, "offset":J
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .local v4, "length":J
    move-object v0, p0

    .line 688
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_46

    .line 690
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 721
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "offset":J
    .end local v4    # "length":J
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_45
    return-void

    .line 690
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_46
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0

    .line 696
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_4b
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 697
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 701
    :pswitch_58
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 706
    :pswitch_61
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 707
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 709
    :cond_6c
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 716
    :pswitch_74
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_45

    .line 720
    :pswitch_78
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_45

    .line 724
    :pswitch_80
    new-instance v0, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load audio or video for contact "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_4b
        :pswitch_58
        :pswitch_61
        :pswitch_74
        :pswitch_78
        :pswitch_80
    .end packed-switch
.end method

.method public static loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I
    .registers 8
    .param p0, "soundPool"    # Landroid/media/SoundPool;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 637
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 638
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_90

    .line 665
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 640
    :pswitch_2f
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    .line 659
    :goto_37
    return v2

    .line 643
    :pswitch_38
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 644
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 647
    :pswitch_46
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0, p2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 651
    :pswitch_50
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 652
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 654
    :cond_5b
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 658
    :pswitch_64
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 659
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_37

    .line 662
    .end local v1    # "tempFile":Ljava/io/File;
    :pswitch_71
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_38
        :pswitch_46
        :pswitch_50
        :pswitch_64
        :pswitch_64
        :pswitch_71
    .end packed-switch
.end method

.method public static loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .registers 8
    .param p0, "videoView"    # Landroid/widget/VideoView;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 745
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_8a

    .line 776
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 748
    :pswitch_2e
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 749
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 771
    .end local v1    # "tempFile":Ljava/io/File;
    :goto_39
    return-void

    .line 753
    :pswitch_3a
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 754
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_39

    .line 758
    :pswitch_47
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_39

    .line 763
    :pswitch_50
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 764
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 766
    :cond_5b
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_39

    .line 770
    :pswitch_63
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_39

    .line 774
    :pswitch_6b
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 745
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_3a
        :pswitch_47
        :pswitch_50
        :pswitch_2e
        :pswitch_63
        :pswitch_6b
    .end packed-switch
.end method

.method public static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .registers 7
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ae

    .line 287
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :pswitch_2a
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 282
    :cond_2e
    :goto_2e
    return-object v0

    .line 254
    :pswitch_2f
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    .line 258
    :pswitch_3e
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    .line 262
    :pswitch_49
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 263
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 266
    :cond_54
    :pswitch_54
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2e

    .line 269
    :pswitch_5e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2e

    .line 273
    :pswitch_6b
    const/4 v0, 0x0

    .line 274
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_a1

    .line 275
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 276
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 281
    :goto_80
    if-nez v0, :cond_2e

    .line 285
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open contact photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_a1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 279
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 278
    invoke-static {v1, v2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_80

    .line 249
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2f
        :pswitch_3e
        :pswitch_49
        :pswitch_54
        :pswitch_5e
        :pswitch_6b
    .end packed-switch
.end method

.method private static replAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppInventor/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    .line 111
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
