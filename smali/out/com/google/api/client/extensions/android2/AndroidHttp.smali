.class public Lcom/google/api/client/extensions/android2/AndroidHttp;
.super Ljava/lang/Object;
.source "AndroidHttp.java"


# static fields
.field private static final GINGERBREAD:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGingerbreadOrHigher()Z
    .registers 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->isGingerbreadOrHigher()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    goto :goto_b
.end method
