.class public final Lorg/acra/collector/CrashReportDataFactory;
.super Ljava/lang/Object;
.source "CrashReportDataFactory.java"


# instance fields
.field private final appStartDate:Landroid/text/format/Time;

.field private final context:Landroid/content/Context;

.field private final crashReportFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field

.field private final customParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initialConfiguration:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/text/format/Time;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "appStartDate"    # Landroid/text/format/Time;
    .param p4, "initialConfiguration"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    .line 102
    iput-object p1, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    .line 104
    iput-object p3, p0, Lorg/acra/collector/CrashReportDataFactory;->appStartDate:Landroid/text/format/Time;

    .line 105
    iput-object p4, p0, Lorg/acra/collector/CrashReportDataFactory;->initialConfiguration:Ljava/lang/String;

    .line 107
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 108
    .local v0, "config":Lorg/acra/annotation/ReportsCrashes;
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v1

    .line 111
    .local v1, "customReportFields":[Lorg/acra/ReportField;
    array-length v3, v1

    if-eqz v3, :cond_2c

    .line 112
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Using custom Report Fields"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object v2, v1

    .line 122
    .local v2, "fieldsList":[Lorg/acra/ReportField;
    :goto_25
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    .line 123
    return-void

    .line 114
    .end local v2    # "fieldsList":[Lorg/acra/ReportField;
    :cond_2c
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    const-string v3, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 115
    :cond_3e
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Using default Report Fields"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v2, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    .restart local v2    # "fieldsList":[Lorg/acra/ReportField;
    goto :goto_25

    .line 118
    .end local v2    # "fieldsList":[Lorg/acra/ReportField;
    :cond_48
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Using default Mail Report Fields"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v2, Lorg/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    .restart local v2    # "fieldsList":[Lorg/acra/ReportField;
    goto :goto_25
.end method

.method private createCustomInfoString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v2, "customInfo":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    .local v0, "currentKey":Ljava/lang/String;
    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, "currentVal":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 397
    .end local v0    # "currentKey":Ljava/lang/String;
    .end local v1    # "currentVal":Ljava/lang/String;
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 402
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 403
    .local v2, "result":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 407
    .local v1, "printWriter":Ljava/io/PrintWriter;
    move-object v0, p1

    .line 408
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_b
    if-eqz v0, :cond_15

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 410
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_b

    .line 412
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "stacktraceAsString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 415
    return-object v3
.end method


# virtual methods
.method public createCrashData(Ljava/lang/Throwable;ZLjava/lang/Thread;)Lorg/acra/collector/CrashReportData;
    .registers 14
    .param p1, "th"    # Ljava/lang/Throwable;
    .param p2, "isSilentReport"    # Z
    .param p3, "brokenThread"    # Ljava/lang/Thread;

    .prologue
    .line 179
    new-instance v0, Lorg/acra/collector/CrashReportData;

    invoke-direct {v0}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 186
    .local v0, "crashReportData":Lorg/acra/collector/CrashReportData;
    :try_start_5
    sget-object v6, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-direct {p0, p1}, Lorg/acra/collector/CrashReportDataFactory;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v6, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->appStartDate:Landroid/text/format/Time;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    if-eqz p2, :cond_23

    .line 190
    sget-object v6, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const-string v7, "true"

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_23
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 195
    sget-object v6, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_3a
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 200
    sget-object v6, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_4f
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 205
    sget-object v6, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->initialConfiguration:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_60
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 208
    sget-object v6, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_75
    instance-of v6, p1, Ljava/lang/OutOfMemoryError;

    if-nez v6, :cond_8c

    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 213
    sget-object v6, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/DumpSysCollector;->collectMemInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_8c
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 218
    sget-object v6, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_a1
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 223
    sget-object v6, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    const-class v7, Landroid/os/Build;

    invoke-static {v7}, Lorg/acra/collector/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_b6
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 228
    sget-object v6, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_c7
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 232
    sget-object v6, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_d8
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 237
    sget-object v6, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_e9
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 240
    sget-object v6, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_fa
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_111

    .line 245
    sget-object v6, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/ReportUtils;->getTotalInternalMemorySize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_111
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_128

    .line 248
    sget-object v6, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/ReportUtils;->getAvailableInternalMemorySize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_128
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 253
    sget-object v6, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/util/ReportUtils;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_13d
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    .line 258
    sget-object v6, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/util/ReportUtils;->getDisplayDetails(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_152
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16e

    .line 263
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 264
    .local v1, "curDate":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 265
    sget-object v6, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v1    # "curDate":Landroid/text/format/Time;
    :cond_16e
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_181

    .line 270
    sget-object v6, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-direct {p0}, Lorg/acra/collector/CrashReportDataFactory;->createCustomInfoString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_181
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 275
    sget-object v6, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "acra.user.email"

    const-string v9, "N/A"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_19a
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1af

    .line 280
    sget-object v6, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/collector/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1af
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c4

    .line 285
    sget-object v6, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const-class v7, Landroid/os/Environment;

    invoke-static {v7}, Lorg/acra/collector/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_1c4
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d9

    .line 290
    sget-object v6, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/collector/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1d9
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ee

    .line 295
    sget-object v6, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/collector/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_1ee
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_203

    .line 300
    sget-object v6, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/acra/collector/SharedPreferencesCollector;->collect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_203
    new-instance v5, Lorg/acra/util/PackageManagerWrapper;

    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 307
    .local v5, "pm":Lorg/acra/util/PackageManagerWrapper;
    invoke-virtual {v5}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 308
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_331

    .line 310
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_225

    .line 311
    sget-object v6, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_225
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23a

    .line 314
    sget-object v7, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v6, :cond_32d

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_237
    invoke-virtual {v0, v7, v6}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_23a
    :goto_23a
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_264

    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "acra.deviceid.enable"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_264

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v6}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_264

    .line 324
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v6}, Lorg/acra/util/ReportUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "deviceId":Ljava/lang/String;
    if-eqz v2, :cond_264

    .line 326
    sget-object v6, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-virtual {v0, v6, v2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v2    # "deviceId":Ljava/lang/String;
    :cond_264
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "acra.syslog.enable"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_277

    const-string v6, "android.permission.READ_LOGS"

    invoke-virtual {v5, v6}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27f

    :cond_277
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v6

    const/16 v7, 0x10

    if-lt v6, v7, :cond_343

    .line 337
    :cond_27f
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29a

    .line 339
    sget-object v6, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/4 v7, 0x0

    invoke-static {v7}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_29a
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2af

    .line 342
    sget-object v6, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    const-string v7, "events"

    invoke-static {v7}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_2af
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c4

    .line 345
    sget-object v6, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    const-string v7, "radio"

    invoke-static {v7}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_2c4
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e1

    .line 348
    sget-object v6, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/acra/ACRAConfiguration;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/acra/collector/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_2e1
    :goto_2e1
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_306

    .line 357
    sget-object v6, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    iget-object v7, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lorg/acra/ACRAConfiguration;->applicationLogFileLines()I

    move-result v9

    invoke-static {v7, v8, v9}, Lorg/acra/collector/LogFileCollector;->collectLogFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_306
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_319

    .line 363
    sget-object v6, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/MediaCodecListCollector;->collecMediaCodecList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_319
    iget-object v6, p0, Lorg/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    sget-object v7, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32c

    .line 368
    sget-object v6, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    invoke-static {p3}, Lorg/acra/collector/ThreadCollector;->collect(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :cond_32c
    :goto_32c
    return-object v0

    .line 314
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :cond_32d
    const-string v6, "not set"

    goto/16 :goto_237

    .line 318
    :cond_331
    sget-object v6, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const-string v7, "Package info unavailable"

    invoke-virtual {v0, v6, v7}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_338
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_338} :catch_33a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_338} :catch_34b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_338} :catch_373

    goto/16 :goto_23a

    .line 371
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :catch_33a
    move-exception v3

    .line 372
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error while retrieving crash data"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32c

    .line 352
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :cond_343
    :try_start_343
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34a
    .catch Ljava/lang/RuntimeException; {:try_start_343 .. :try_end_34a} :catch_33a
    .catch Ljava/io/FileNotFoundException; {:try_start_343 .. :try_end_34a} :catch_34b
    .catch Ljava/io/IOException; {:try_start_343 .. :try_end_34a} :catch_373

    goto :goto_2e1

    .line 373
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :catch_34b
    move-exception v3

    .line 374
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error : application log file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32c

    .line 375
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_373
    move-exception v3

    .line 376
    .local v3, "e":Ljava/io/IOException;
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while reading application log file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32c
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
