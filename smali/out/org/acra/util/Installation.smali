.class public Lorg/acra/util/Installation;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "ACRA-INSTALLATION"

.field private static sID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v3, Lorg/acra/util/Installation;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lorg/acra/util/Installation;->sID:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "ACRA-INSTALLATION"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_65

    .line 38
    .local v1, "installation":Ljava/io/File;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 39
    invoke-static {v1}, Lorg/acra/util/Installation;->writeInstallationFile(Ljava/io/File;)V

    .line 41
    :cond_1b
    invoke-static {v1}, Lorg/acra/util/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/acra/util/Installation;->sID:Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_21} :catch_45
    .catchall {:try_start_12 .. :try_end_21} :catchall_65

    .line 50
    .end local v1    # "installation":Ljava/io/File;
    :cond_21
    :try_start_21
    sget-object v2, Lorg/acra/util/Installation;->sID:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_65

    :goto_23
    monitor-exit v3

    return-object v2

    .line 42
    .restart local v1    # "installation":Ljava/io/File;
    :catch_25
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    :try_start_26
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve InstallationId for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const-string v2, "Couldn\'t retrieve InstallationId"

    goto :goto_23

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :catch_45
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve InstallationId for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    const-string v2, "Couldn\'t retrieve InstallationId"
    :try_end_64
    .catchall {:try_start_26 .. :try_end_64} :catchall_65

    goto :goto_23

    .line 35
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "installation":Ljava/io/File;
    :catchall_65
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 57
    .local v0, "bytes":[B
    :try_start_e
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1a

    .line 59
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 61
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 59
    :catchall_1a
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .registers 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 67
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 72
    return-void

    .line 70
    .end local v0    # "id":Ljava/lang/String;
    :catchall_18
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method
