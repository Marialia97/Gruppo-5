.class final Lorg/acra/collector/SettingsCollector;
.super Ljava/lang/Object;
.source "SettingsCollector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v6, "result":Ljava/lang/StringBuilder;
    const-class v8, Landroid/provider/Settings$Secure;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 81
    .local v4, "keys":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v5, :cond_65

    aget-object v3, v0, v2

    .line 82
    .local v3, "key":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_50

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_50

    invoke-static {v3}, Lorg/acra/collector/SettingsCollector;->isAuthorized(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 84
    :try_start_28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_50

    .line 86
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_50} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_50} :catch_5c

    .line 81
    .end local v7    # "value":Ljava/lang/String;
    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 88
    :catch_53
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 90
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5c
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 96
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "key":Ljava/lang/reflect/Field;
    :cond_65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v6, "result":Ljava/lang/StringBuilder;
    const-class v8, Landroid/provider/Settings$System;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 49
    .local v4, "keys":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v5, :cond_5f

    aget-object v3, v0, v2

    .line 53
    .local v3, "key":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4a

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_4a

    .line 55
    :try_start_22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_4a

    .line 57
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_4a} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_4a} :catch_56

    .line 49
    .end local v7    # "value":Ljava/lang/String;
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 59
    :catch_4d
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 61
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_56
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 67
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "key":Ljava/lang/reflect/Field;
    :cond_5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static isAuthorized(Ljava/lang/reflect/Field;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/reflect/Field;

    .prologue
    .line 100
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_AP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 101
    :cond_e
    const/4 v0, 0x0

    .line 103
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method
