.class public Lcom/google/appinventor/components/runtime/Form;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "Form.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x7
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x1b
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_WIFI_STATE,android.permission.ACCESS_NETWORK_STATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR_DARK:I

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field public static final MAX_PERMISSION_NONCE:I = 0x186a0

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final SWITCH_FORM_REQUEST_CODE:I = 0x1

.field private static _initialized:Z

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form;

.field private static applicationIsBeingClosed:Z

.field private static minimumToastWait:J

.field private static nextRequestCode:I

.field private static sCompatibilityMode:Z

.field private static showListsAsJson:Z


# instance fields
.field private aboutScreen:Ljava/lang/String;

.field private accentColor:I

.field private actionBarEnabled:Z

.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResultMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field protected final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private closeAnimType:Ljava/lang/String;

.field private compatScalingFactor:F

.field private deviceDensity:F

.field private dimChanges:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private formHeight:I

.field protected formName:Ljava/lang/String;

.field private formWidth:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field private horizontalAlignment:I

.field private keyboardShown:Z

.field private lastToastTime:J

.field private nextFormName:Ljava/lang/String;

.field private final onClearListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCreateOptionsMenuListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onInitializeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOptionsItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPauseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private openAnimType:Ljava/lang/String;

.field private final permissionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRandom:Ljava/util/Random;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryColor:I

.field private primaryColorDark:I

.field private progress:Landroid/app/ProgressDialog;

.field private scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private screenInitialized:Z

.field private scrollable:Z

.field private showStatusBar:Z

.field private showTitle:Z

.field protected startupValue:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field private usesDarkTheme:Z

.field private usesDefaultBackground:Z

.field private verticalAlignment:I

.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private yandexTranslateTagline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 139
    const-string v0, "&HFF303F9F"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    .line 140
    const-string v0, "&HFFFF4081"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    .line 164
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    .line 237
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    .line 172
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 173
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 196
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 197
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 198
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    .line 211
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    .line 212
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 213
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    .line 214
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    .line 215
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    .line 216
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    .line 217
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    .line 218
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    .line 221
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    .line 224
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    .line 225
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    .line 228
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    .line 230
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 250
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 251
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 275
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    .line 2368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish2()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromMenu()V

    return-void
.end method

.method private closeApplication()V
    .registers 3

    .prologue
    .line 2280
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    .line 2282
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v1, "Screen1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2290
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 2292
    :cond_14
    return-void
.end method

.method private closeApplicationFromMenu()V
    .registers 1

    .prologue
    .line 2271
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2272
    return-void
.end method

.method private static decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 620
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeJSONStringForForm -- decoding JSON representation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v1, ""

    .line 623
    .local v1, "valueFromJSON":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_1c
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 624
    .local v1, "valueFromJSON":Ljava/lang/Object;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3c} :catch_3d

    .line 631
    .end local v1    # "valueFromJSON":Ljava/lang/Object;
    :goto_3c
    return-object v1

    .line 625
    :catch_3d
    move-exception v0

    .line 626
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x387

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method private defaultPropertyValues()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 440
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    .line 444
    :goto_d
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    .line 445
    const-string v0, "Responsive"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 446
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    .line 447
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 449
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 450
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 452
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 453
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    .line 454
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    .line 455
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AccentColor(I)V

    .line 456
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColor(I)V

    .line 457
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColorDark(I)V

    .line 458
    const-string v0, "Classic"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Theme(Ljava/lang/String;)V

    .line 459
    const-string v0, "unspecified"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    .line 461
    return-void

    .line 442
    :cond_53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    goto :goto_d
.end method

.method public static finishActivity()V
    .registers 2

    .prologue
    .line 2213
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_b

    .line 2214
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2218
    return-void

    .line 2216
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .registers 5
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 2222
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_2e

    .line 2223
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_18

    .line 2224
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 2225
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2235
    :goto_17
    return-void

    .line 2227
    :cond_18
    const-string v2, "close screen with value"

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2228
    .local v0, "jString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2229
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "APP_INVENTOR_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2230
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    goto :goto_17

    .line 2233
    .end local v0    # "jString":Ljava/lang/String;
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :cond_2e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "activeForm is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .registers 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 2239
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_14

    .line 2240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2241
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "APP_INVENTOR_RESULT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2246
    return-void

    .line 2244
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static finishApplication()V
    .registers 2

    .prologue
    .line 2259
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_a

    .line 2260
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    .line 2264
    return-void

    .line 2262
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .prologue
    .line 696
    sget-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne p2, v0, :cond_11

    .line 697
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 699
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_10
.end method

.method private static generateNewRequestCode()I
    .registers 2

    .prologue
    .line 715
    sget v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .registers 1

    .prologue
    .line 2170
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getCompatibilityMode()Z
    .registers 1

    .prologue
    .line 2539
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method public static getStartText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2181
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_9

    .line 2182
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 2184
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2199
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_f

    .line 2200
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2202
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 2059
    const-string v1, ""

    .line 2060
    .local v1, "jsonResult":Ljava/lang/String;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonEncodeForForm -- creating JSON representation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :try_start_1e
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2064
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonEncodeForForm -- got JSON representation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_3a} :catch_3b

    .line 2071
    :goto_3a
    return-object v1

    .line 2065
    :catch_3b
    move-exception v0

    .line 2066
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x388

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 2069
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2066
    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method private onCreateFinish2()V
    .registers 6

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 400
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 401
    .local v2, "startIntent":Landroid/content/Intent;
    if-eqz v2, :cond_19

    const-string v3, "APP_INVENTOR_START"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 402
    const-string v3, "APP_INVENTOR_START"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 405
    :cond_19
    new-instance v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 409
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 410
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 411
    .local v1, "softInputMode":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    or-int/lit8 v4, v1, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 415
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    .line 423
    return-void
.end method

.method private populatePermissions()V
    .registers 6

    .prologue
    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 432
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 436
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_15
    return-void

    .line 433
    :catch_16
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Form"

    const-string v3, "Exception while attempting to learn permissions."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private recomputeLayout()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 1145
    const-string v1, "Form"

    const-string v3, "recomputeLayout called"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_12

    .line 1148
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1150
    :cond_12
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    if-ne v1, v3, :cond_a1

    move v0, v2

    .line 1151
    .local v0, "needsTitleBar":Z
    :goto_21
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1152
    if-eqz v0, :cond_35

    .line 1153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    :cond_35
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-eqz v1, :cond_a4

    .line 1170
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1171
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_4d

    .line 1174
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1179
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1183
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1185
    const-string v1, "Form"

    const-string v2, "About to create a new ScaledFrameLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    new-instance v1, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 1187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1194
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 1195
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$8;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1212
    return-void

    .line 1150
    .end local v0    # "needsTitleBar":Z
    :cond_a1
    const/4 v0, 0x0

    goto/16 :goto_21

    .line 1177
    .restart local v0    # "needsTitleBar":Z
    :cond_a4
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    goto :goto_4d
.end method

.method private setBackground(Landroid/view/View;)V
    .registers 6
    .param p1, "bgview"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 2525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2526
    .local v0, "setDraw":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_27

    if-eqz v0, :cond_27

    .line 2527
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2528
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v2, :cond_1b

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :cond_1b
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2534
    :goto_20
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2535
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2536
    return-void

    .line 2531
    :cond_27
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "setDraw":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v2, :cond_2f

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :cond_2f
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "setDraw":Landroid/graphics/drawable/Drawable;
    goto :goto_20
.end method

.method private showAboutApplicationNotification()V
    .registers 7

    .prologue
    .line 2375
    const-string v3, "About this app"

    .line 2376
    .local v3, "title":Ljava/lang/String;
    const-string v0, "<p><small><em>Invented with MIT App Inventor<br>appinventor.mit.edu</em></small></p>"

    .line 2378
    .local v0, "MITtagline":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2379
    .local v2, "message":Ljava/lang/String;
    const-string v4, "\\n"

    const-string v5, "<br>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2380
    const-string v1, "Got it"

    .line 2381
    .local v1, "buttonText":Ljava/lang/String;
    invoke-static {p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    return-void
.end method

.method private showExitApplicationNotification()V
    .registers 10

    .prologue
    .line 2347
    const-string v2, "Stop application?"

    .line 2348
    .local v2, "title":Ljava/lang/String;
    const-string v1, "Stop this application and exit? You\'ll need to relaunch the application to use it again."

    .line 2350
    .local v1, "message":Ljava/lang/String;
    const-string v3, "Stop and exit"

    .line 2351
    .local v3, "positiveButton":Ljava/lang/String;
    const-string v4, "Don\'t stop"

    .line 2354
    .local v4, "negativeButton":Ljava/lang/String;
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$13;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Form$13;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2355
    .local v6, "stopApplication":Ljava/lang/Runnable;
    new-instance v7, Lcom/google/appinventor/components/runtime/Form$14;

    invoke-direct {v7, p0}, Lcom/google/appinventor/components/runtime/Form$14;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2356
    .local v7, "doNothing":Ljava/lang/Runnable;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2366
    return-void
.end method

.method public static switchForm(Ljava/lang/String;)V
    .registers 3
    .param p0, "nextFormName"    # Ljava/lang/String;

    .prologue
    .line 2000
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_b

    .line 2001
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2005
    return-void

    .line 2003
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "nextFormName"    # Ljava/lang/String;
    .param p1, "startValue"    # Ljava/lang/Object;

    .prologue
    .line 2016
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open another screen with start value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_22

    .line 2018
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2022
    return-void

    .line 2020
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 2105
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 2094
    return-object p0
.end method

.method protected $define()V
    .registers 2

    .prologue
    .line 851
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .registers 1

    .prologue
    .line 2099
    return-object p0
.end method

.method public AboutScreen()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .registers 2
    .param p1, "aboutScreen"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    .line 1341
    return-void
.end method

.method public AccentColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1873
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    return v0
.end method

.method public AccentColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the accent color used for highlights and other user interface accents."
        userVisible = false
    .end annotation

    .prologue
    .line 1862
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 1863
    return-void
.end method

.method public ActionBar(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1505
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_9

    .line 1520
    :cond_8
    :goto_8
    return-void

    .line 1509
    :cond_9
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    if-eq v0, p1, :cond_8

    .line 1510
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setActionBarEnabled(Z)V

    .line 1511
    if-eqz p1, :cond_22

    .line 1512
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->hideTitleBar()V

    .line 1513
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 1518
    :goto_1f
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    goto :goto_8

    .line 1515
    :cond_22
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->maybeShowTitleBar()V

    .line 1516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    goto :goto_1f
.end method

.method public AlignHorizontal()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 2 = horizontally centered,  3 = right aligned."
    .end annotation

    .prologue
    .line 1538
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:I

    return v0
.end method

.method public AlignHorizontal(I)V
    .registers 8
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1557
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 1558
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1563
    :goto_7
    return-void

    .line 1559
    :catch_8
    move-exception v0

    .line 1560
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "HorizontalAlignment"

    const/16 v2, 0x579

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1560
    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public AlignVertical()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .prologue
    .line 1576
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:I

    return v0
.end method

.method public AlignVertical(I)V
    .registers 8
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1596
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 1597
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1602
    :goto_7
    return-void

    .line 1598
    :catch_8
    move-exception v0

    .line 1599
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "VerticalAlignment"

    const/16 v2, 0x57a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1600
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1599
    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public AppName(Ljava/lang/String;)V
    .registers 2
    .param p1, "aName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    .prologue
    .line 1819
    return-void
.end method

.method public AskForPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ask the user to grant access to a dangerous permission."
    .end annotation

    .prologue
    .line 1095
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1098
    :cond_1b
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1108
    return-void
.end method

.method public BackPressed()Z
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    .prologue
    .line 575
    const-string v0, "BackPressed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1222
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 3
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1236
    if-nez p1, :cond_b

    .line 1237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    .line 1243
    :goto_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1244
    return-void

    .line 1239
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    .line 1240
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    goto :goto_5
.end method

.method public BackgroundImage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1275
    if-nez p1, :cond_4

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 1278
    :try_start_6
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_14

    .line 1283
    :goto_e
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1284
    return-void

    .line 1279
    :catch_14
    move-exception v0

    .line 1280
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public BlocksToolkit(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "subset_json"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A JSON string representing the subset for the screen. Authors of template apps can use this to control what components, designer properties, and blocks are available in the project."
        userVisible = false
    .end annotation

    .prologue
    .line 1966
    return-void
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    return-object v0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .registers 6
    .param p1, "animType"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1661
    const-string v0, "default"

    if-eq p1, v0, :cond_26

    const-string v0, "fade"

    if-eq p1, v0, :cond_26

    const-string v0, "zoom"

    if-eq p1, v0, :cond_26

    const-string v0, "slidehorizontal"

    if-eq p1, v0, :cond_26

    const-string v0, "slidevertical"

    if-eq p1, v0, :cond_26

    const-string v0, "none"

    if-eq p1, v0, :cond_26

    .line 1664
    const-string v0, "Screen"

    const/16 v1, 0x389

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1669
    :goto_25
    return-void

    .line 1668
    :cond_26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    goto :goto_25
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .prologue
    .line 931
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 933
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", componentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", functionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", messages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-string v1, "ErrorOccurred"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 937
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 936
    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_9a

    .line 944
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    .line 946
    :cond_9a
    return-void
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 951
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 953
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", componentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", functionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", messages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v1, "ErrorOccurred"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 957
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 956
    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_9a

    .line 964
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5, p6}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_9a
    return-void
.end method

.method public Height()I
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .prologue
    .line 1937
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    return v0
.end method

.method public HideKeyboard()V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the onscreen soft keyboard."
    .end annotation

    .prologue
    .line 2547
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2548
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_8

    .line 2549
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2551
    :cond_8
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2552
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2553
    return-void
.end method

.method public Icon(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1691
    return-void
.end method

.method public Initialize()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The Initialize event is run when the Screen starts and is only run once per screen."
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 917
    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    return-object v0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .registers 6
    .param p1, "animType"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1627
    const-string v0, "default"

    if-eq p1, v0, :cond_26

    const-string v0, "fade"

    if-eq p1, v0, :cond_26

    const-string v0, "zoom"

    if-eq p1, v0, :cond_26

    const-string v0, "slidehorizontal"

    if-eq p1, v0, :cond_26

    const-string v0, "slidevertical"

    if-eq p1, v0, :cond_26

    const-string v0, "none"

    if-eq p1, v0, :cond_26

    .line 1630
    const-string v0, "Screen"

    const/16 v1, 0x389

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1635
    :goto_25
    return-void

    .line 1634
    :cond_26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    goto :goto_25
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "otherScreenName"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .prologue
    .line 2077
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2078
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2077
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v0, "OtherScreenClosed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2080
    return-void
.end method

.method public PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1053
    const-string v0, "android.permission."

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1055
    const-string v0, "android.permission."

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1057
    :cond_12
    const-string v0, "PermissionDenied"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1058
    const/16 v0, 0x38c

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p3, v1, v3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1060
    :cond_2d
    return-void
.end method

.method public PermissionGranted(Ljava/lang/String;)V
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to handle when the app user has granted a needed permission. This event is only run when permission is granted in response to the AskForPermission method."
    .end annotation

    .prologue
    .line 1072
    const-string v0, "android.permission."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1074
    const-string v0, "android.permission."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1076
    :cond_10
    const-string v0, "PermissionGranted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1077
    return-void
.end method

.method public Platform()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The platform the app is running on, for example \"Android\" or \"iOS\"."
    .end annotation

    .prologue
    .line 1977
    const-string v0, "Android"

    return-object v0
.end method

.method public PlatformVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The dotted version number of the platform, such as 4.2.2 or 10.0. This is platform specific and there is no guarantee that it has a particular format."
    .end annotation

    .prologue
    .line 1990
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public PrimaryColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1836
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    return v0
.end method

.method public PrimaryColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for Material UI elements, such as the ActionBar."
        userVisible = false
    .end annotation

    .prologue
    .line 1826
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setPrimaryColor(I)V

    .line 1827
    return-void
.end method

.method public PrimaryColorDark()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1854
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    return v0
.end method

.method public PrimaryColorDark(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF303F9F"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for darker elements in Material UI."
        userVisible = false
    .end annotation

    .prologue
    .line 1844
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 1845
    return-void
.end method

.method ReplayFormOrientation()V
    .registers 6

    .prologue
    .line 682
    const-string v2, "Form"

    const-string v3, "ReplayFormOrientation()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 684
    .local v1, "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 686
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    .line 687
    .local v0, "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->dim:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v3, v4, :cond_36

    .line 688
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    goto :goto_1c

    .line 690
    :cond_36
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    goto :goto_1c

    .line 693
    .end local v0    # "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    :cond_3e
    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 1451
    const-string v0, "unspecified"

    :goto_9
    return-object v0

    .line 1426
    :pswitch_a
    const-string v0, "behind"

    goto :goto_9

    .line 1428
    :pswitch_d
    const-string v0, "landscape"

    goto :goto_9

    .line 1430
    :pswitch_10
    const-string v0, "nosensor"

    goto :goto_9

    .line 1432
    :pswitch_13
    const-string v0, "portrait"

    goto :goto_9

    .line 1434
    :pswitch_16
    const-string v0, "sensor"

    goto :goto_9

    .line 1436
    :pswitch_19
    const-string v0, "unspecified"

    goto :goto_9

    .line 1438
    :pswitch_1c
    const-string v0, "user"

    goto :goto_9

    .line 1440
    :pswitch_1f
    const-string v0, "fullSensor"

    goto :goto_9

    .line 1442
    :pswitch_22
    const-string v0, "reverseLandscape"

    goto :goto_9

    .line 1444
    :pswitch_25
    const-string v0, "reversePortrait"

    goto :goto_9

    .line 1446
    :pswitch_28
    const-string v0, "sensorLandscape"

    goto :goto_9

    .line 1448
    :pswitch_2b
    const-string v0, "sensorPortrait"

    goto :goto_9

    .line 1424
    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_19
        :pswitch_d
        :pswitch_13
        :pswitch_1c
        :pswitch_a
        :pswitch_16
        :pswitch_10
        :pswitch_28
        :pswitch_2b
        :pswitch_22
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .registers 7
    .param p1, "screenOrientation"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/16 v4, 0x385

    const/16 v3, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1466
    const-string v0, "behind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1467
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    .line 1499
    :goto_12
    return-void

    .line 1468
    :cond_13
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1469
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1470
    :cond_1f
    const-string v0, "nosensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1471
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1472
    :cond_2c
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1473
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1474
    :cond_38
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1475
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1476
    :cond_45
    const-string v0, "unspecified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1477
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1478
    :cond_52
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1479
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1480
    :cond_5f
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v3, :cond_b4

    .line 1481
    const-string v0, "fullSensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1482
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1483
    :cond_73
    const-string v0, "reverseLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1484
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1485
    :cond_81
    const-string v0, "reversePortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1486
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_12

    .line 1487
    :cond_8d
    const-string v0, "sensorLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1488
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_12

    .line 1489
    :cond_9b
    const-string v0, "sensorPortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1490
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_12

    .line 1492
    :cond_a9
    const-string v0, "ScreenOrientation"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 1496
    :cond_b4
    const-string v0, "ScreenOrientation"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_12
.end method

.method public ScreenOrientationChanged()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .prologue
    .line 921
    const-string v0, "ScreenOrientationChanged"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 922
    return-void
.end method

.method public Scrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 1141
    :goto_8
    return-void

    .line 1139
    :cond_9
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    .line 1140
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    goto :goto_8
.end method

.method public Scrollable()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    return v0
.end method

.method public ShowListsAsJson(Z)V
    .registers 2
    .param p1, "asJson"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"true\" meaning that the App Inventor programmer must explicitly set it to \"false\" if Lisp syntax is desired. In older versions of App Inventor, this setting defaulted to false. Older projects should not have been affected by this default settings update."
        userVisible = false
    .end annotation

    .prologue
    .line 1790
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 1791
    return-void
.end method

.method public ShowListsAsJson()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 1803
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    return v0
.end method

.method public ShowStatusBar(Z)V
    .registers 5
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 1395
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    if-eq p1, v0, :cond_1a

    .line 1396
    if-eqz p1, :cond_1b

    .line 1397
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1398
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1403
    :goto_18
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 1405
    :cond_1a
    return-void

    .line 1400
    :cond_1b
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1401
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_18
.end method

.method public ShowStatusBar()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .prologue
    .line 1382
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    return v0
.end method

.method public Sizing(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Responsive"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .prologue
    .line 1743
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sizing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1745
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1746
    const-string v0, "Fixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1747
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1748
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1749
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1753
    :goto_5d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v0, :cond_9c

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    :goto_65
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 1754
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_71

    .line 1755
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1757
    :cond_71
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " formHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    return-void

    .line 1751
    :cond_98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    goto :goto_5d

    .line 1753
    :cond_9c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_65
.end method

.method public Theme(Ljava/lang/String;)V
    .registers 5
    .param p1, "theme"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Classic"
        editorType = "theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme used by the application."
        userVisible = false
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 1891
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_11

    .line 1892
    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 1893
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1915
    :cond_10
    :goto_10
    return-void

    .line 1896
    :cond_11
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    if-eqz v0, :cond_2c

    .line 1897
    const-string v0, "AppTheme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1898
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 1902
    :goto_27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1904
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    .line 1905
    const-string v0, "Classic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1906
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->CLASSIC:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_10

    .line 1900
    :cond_3d
    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    goto :goto_27

    .line 1907
    :cond_40
    const-string v0, "AppTheme.Light.DarkActionBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1908
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DEVICE_DEFAULT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_10

    .line 1909
    :cond_4e
    const-string v0, "AppTheme.Light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1910
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->BLACK_TITLE_TEXT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_10

    .line 1911
    :cond_5c
    const-string v0, "AppTheme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    .line 1913
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_10
.end method

.method public Title()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 1308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->updateTitle()V

    .line 1313
    return-void
.end method

.method public TitleVisible(Z)V
    .registers 3
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1364
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    if-eq p1, v0, :cond_12

    .line 1365
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 1366
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    if-eqz v0, :cond_13

    .line 1367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 1372
    :cond_12
    :goto_12
    return-void

    .line 1369
    :cond_13
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->maybeShowTitleBar()V

    goto :goto_12
.end method

.method public TitleVisible()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .prologue
    .line 1351
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    return v0
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid."
        userVisible = false
    .end annotation

    .prologue
    .line 1955
    return-void
.end method

.method public VersionCode(I)V
    .registers 2
    .param p1, "vCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
        userVisible = false
    .end annotation

    .prologue
    .line 1706
    return-void
.end method

.method public VersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "vName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
        userVisible = false
    .end annotation

    .prologue
    .line 1721
    return-void
.end method

.method public Width()I
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .prologue
    .line 1925
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    return v0
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 2325
    const/4 v1, 0x2

    const-string v2, "About this application"

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$12;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$12;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2327
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2333
    .local v0, "aboutAppItem":Landroid/view/MenuItem;
    const v1, 0x1080093

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2334
    return-void
.end method

.method public addExitButtonToMenu(Landroid/view/Menu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 2313
    const/4 v1, 0x1

    const-string v2, "Stop this application"

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$11;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2315
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2321
    .local v0, "stopApplicationItem":Landroid/view/MenuItem;
    const v1, 0x108005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2322
    return-void
.end method

.method public askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    .prologue
    .line 2643
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    .line 2644
    .local v1, "permissionsToAsk":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2645
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2646
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2647
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 2650
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    .line 2652
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    .line 2682
    :goto_27
    return-void

    .line 2655
    :cond_28
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$16;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Form$16;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method

.method public askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "responseRequestor"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .prologue
    .line 2618
    move-object v0, p0

    .line 2619
    .local v0, "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2621
    const/4 v1, 0x1

    invoke-interface {p2, p1, v1}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 2635
    :goto_b
    return-void

    .line 2624
    :cond_c
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$15;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Form$15;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public assertPermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 2592
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2593
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2595
    :cond_c
    return-void
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .registers 7
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2470
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Initialize"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_c} :catch_4e

    move-result-object v1

    .line 2479
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_d
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling Initialize method for Object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2f} :catch_50

    .line 2485
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_2f
    return-void

    .line 2471
    :catch_30
    move-exception v0

    .line 2472
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 2474
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4e
    move-exception v0

    .line 2476
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2f

    .line 2481
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_50
    move-exception v0

    .line 2482
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 857
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v1, :cond_e

    if-ne p1, p0, :cond_14

    const-string v1, "Initialize"

    .line 858
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_e
    const/4 v0, 0x1

    .line 860
    .local v0, "canDispatch":Z
    :goto_f
    if-eqz v0, :cond_13

    .line 863
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 866
    :cond_13
    return v0

    .line 858
    .end local v0    # "canDispatch":Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 2386
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clear called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2388
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_35

    .line 2389
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2393
    :cond_35
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 2394
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2395
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2396
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2397
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2398
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2399
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2400
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2401
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2402
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 2404
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 2405
    .local v0, "onClearListener":Lcom/google/appinventor/components/runtime/OnClearListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnClearListener;->onClear()V

    goto :goto_69

    .line 2408
    .end local v0    # "onClearListener":Lcom/google/appinventor/components/runtime/OnClearListener;
    :cond_79
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2409
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Form.clear() About to do moby GC!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2410
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2411
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 2412
    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .registers 1

    .prologue
    .line 2267
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2268
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .registers 3
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 2250
    if-eqz p1, :cond_6

    .line 2251
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 2253
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2255
    return-void
.end method

.method public compatScalingFactor()F
    .registers 2

    .prologue
    .line 2112
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    return v0
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .registers 3
    .param p1, "component"    # Ljava/lang/Object;

    .prologue
    .line 2415
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v0, :cond_9

    .line 2416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2418
    :cond_9
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v0, :cond_12

    .line 2419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2421
    :cond_12
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v0, :cond_1b

    .line 2422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2424
    :cond_1b
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v0, :cond_24

    .line 2425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2427
    :cond_24
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v0, :cond_2d

    .line 2428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2430
    :cond_2d
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v0, :cond_36

    .line 2431
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2433
    :cond_36
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v0, :cond_3f

    .line 2434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2436
    :cond_3f
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v0, :cond_48

    .line 2437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2439
    :cond_48
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v0, :cond_51

    .line 2440
    check-cast p1, Lcom/google/appinventor/components/runtime/Deleteable;

    .end local p1    # "component":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    .line 2442
    :cond_51
    return-void
.end method

.method public deviceDensity()F
    .registers 2

    .prologue
    .line 2108
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 11
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1002
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$5;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1008
    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 11
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1017
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$6;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1029
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 880
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .registers 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "notAlreadyHandled"    # Z
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 886
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "exception"    # Lcom/google/appinventor/components/runtime/errors/PermissionException;

    .prologue
    .line 978
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 979
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 992
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 998
    return-void
.end method

.method public doesAppDeclarePermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dontGrabTouchEventsForComponent()V
    .registers 3

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2452
    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 5
    .param p1, "action"    # I
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 2521
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "asset"    # Ljava/lang/String;

    .prologue
    .line 2725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2751
    .local v0, "extPkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .registers 1

    .prologue
    .line 2087
    return-object p0
.end method

.method public getOpenAnimType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    return-object v0
.end method

.method public isDarkTheme()Z
    .registers 2

    .prologue
    .line 2569
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    return v0
.end method

.method public isDeniedPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 2581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    .line 2582
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    .line 2581
    :goto_e
    return v0

    .line 2582
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected maybeShowTitleBar()V
    .registers 2

    .prologue
    .line 2561
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    if-eqz v0, :cond_8

    .line 2562
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->maybeShowTitleBar()V

    .line 2566
    :goto_7
    return-void

    .line 2564
    :cond_8
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->hideTitleBar()V

    goto :goto_7
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 585
    const-string v5, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Form "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " got onActivityResult, requestCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resultCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v5, 0x1

    if-ne p1, v5, :cond_51

    .line 593
    if-eqz p3, :cond_4e

    const-string v5, "APP_INVENTOR_RESULT"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 594
    const-string v5, "APP_INVENTOR_RESULT"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "resultString":Ljava/lang/String;
    :goto_42
    const-string v5, "other screen closed"

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 600
    .local v1, "decodedResult":Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    .end local v1    # "decodedResult":Ljava/lang/Object;
    .end local v4    # "resultString":Ljava/lang/String;
    :cond_4d
    return-void

    .line 596
    :cond_4e
    const-string v4, ""

    .restart local v4    # "resultString":Ljava/lang/String;
    goto :goto_42

    .line 603
    .end local v4    # "resultString":Ljava/lang/String;
    :cond_51
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 604
    .local v0, "component":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    if-eqz v0, :cond_62

    .line 605
    invoke-interface {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 608
    :cond_62
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 609
    .local v3, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    if-eqz v3, :cond_4d

    .line 610
    new-array v5, v6, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    array-length v7, v5

    :goto_79
    if-ge v6, v7, :cond_4d

    aget-object v2, v5, v6

    .line 611
    .local v2, "listener":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 610
    add-int/lit8 v6, v6, 0x1

    goto :goto_79
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 569
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onBackPressed()V

    .line 571
    :cond_e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 466
    const-string v1, "Form"

    const-string v2, "onConfigurationChanged() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 468
    .local v0, "newOrientation":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 474
    :cond_12
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    :cond_1c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 296
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "className":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 301
    .local v1, "lastDot":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 302
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got onCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 305
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeForm is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    .line 308
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceDensity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    .line 310
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compatScalingFactor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v2, Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v2, p0, v5}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 312
    new-instance v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 314
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 315
    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    if-nez v2, :cond_113

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v3, "Screen1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 316
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MULTI: _initialized = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sput-boolean v5, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 322
    sget-boolean v2, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz v2, :cond_f6

    .line 323
    const-string v2, "Form"

    const-string v3, "MultiDex already installed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 335
    :goto_f5
    return-void

    .line 326
    :cond_f6
    const-string v2, "Please Wait..."

    const-string v3, "Installation Finishing"

    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 327
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 328
    new-instance v2, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;

    invoke-direct {v2, v6}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;-><init>(Lcom/google/appinventor/components/runtime/Form$1;)V

    new-array v3, v5, [Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_f5

    .line 331
    :cond_113
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NO MULTI: _initialized = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sput-boolean v5, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 333
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    goto :goto_f5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 822
    packed-switch p1, :pswitch_data_10

    .line 826
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 824
    :pswitch_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 822
    nop

    :pswitch_data_10
    .packed-switch 0xbd
        :pswitch_8
    .end packed-switch
.end method

.method onCreateFinish()V
    .registers 7

    .prologue
    .line 354
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateFinish called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_25

    .line 356
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 359
    :cond_25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->populatePermissions()V

    .line 369
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 371
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/google/appinventor/common/version/AppInventorFeatures;->doCompanionSplashScreen()Z

    move-result v1

    if-nez v1, :cond_4a

    const/4 v0, 0x1

    .line 372
    .local v0, "needSdcardWrite":Z
    :goto_3d
    if-eqz v0, :cond_4c

    .line 373
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 394
    :goto_49
    return-void

    .line 371
    .end local v0    # "needSdcardWrite":Z
    :cond_4a
    const/4 v0, 0x0

    goto :goto_3d

    .line 392
    .restart local v0    # "needSdcardWrite":Z
    :cond_4c
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish2()V

    goto :goto_49
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2301
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2304
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addExitButtonToMenu(Landroid/view/Menu;)V

    .line 2305
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2306
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 2307
    .local v0, "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;->onCreateOptionsMenu(Landroid/view/Menu;)V

    goto :goto_f

    .line 2309
    .end local v0    # "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    :cond_1f
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 796
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onDestroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 801
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 802
    .local v0, "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    goto :goto_29

    .line 806
    .end local v0    # "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    :cond_39
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onDestroy()V

    .line 807
    return-void
.end method

.method public onGlobalLayout()V
    .registers 9

    .prologue
    .line 533
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 534
    .local v3, "totalHeight":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v2

    .line 535
    .local v2, "scaledHeight":I
    sub-int v1, v3, v2

    .line 539
    .local v1, "heightDiff":I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 540
    .local v0, "diffPercent":F
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGlobalLayout(): diffPercent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    float-to-double v4, v0

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v4, v6

    if-gez v4, :cond_54

    .line 543
    const-string v4, "Form"

    const-string v5, "keyboard hidden!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    if-eqz v4, :cond_53

    .line 545
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 546
    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v4, :cond_53

    .line 547
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 548
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    .line 559
    :cond_53
    :goto_53
    return-void

    .line 552
    :cond_54
    const-string v4, "Form"

    const-string v5, "keyboard shown!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 554
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v4, :cond_53

    .line 555
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 556
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_53
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 752
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 753
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onNewIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 755
    .local v0, "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_2d

    .line 757
    .end local v0    # "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    :cond_3d
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2338
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2339
    .local v0, "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2340
    const/4 v1, 0x1

    .line 2343
    .end local v0    # "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 765
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPause()V

    .line 766
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onPause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 768
    .local v0, "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    goto :goto_29

    .line 770
    .end local v0    # "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    :cond_39
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 831
    packed-switch p1, :pswitch_data_e

    .line 836
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 838
    :goto_6
    return-void

    .line 833
    :pswitch_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    goto :goto_6

    .line 831
    nop

    :pswitch_data_e
    .packed-switch 0xbd
        :pswitch_7
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2687
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 2688
    .local v0, "responder":Lcom/google/appinventor/components/runtime/PermissionResultHandler;
    if-nez v0, :cond_17

    .line 2690
    const-string v1, "Form"

    const-string v2, "Received permission response which we cannot match."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :goto_16
    return-void

    .line 2693
    :cond_17
    array-length v1, p3

    if-lez v1, :cond_34

    .line 2694
    aget v1, p3, v3

    if-nez v1, :cond_2e

    .line 2695
    aget-object v1, p2, v3

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 2703
    :goto_24
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 2697
    :cond_2e
    aget-object v1, p2, v3

    invoke-interface {v0, v1, v3}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_24

    .line 2700
    :cond_34
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestPermissionsResult: grantResults.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 720
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onResume()V

    .line 721
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onResume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 726
    sget-boolean v1, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    if-eqz v1, :cond_2d

    .line 727
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 734
    :cond_2c
    return-void

    .line 731
    :cond_2d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 732
    .local v0, "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    goto :goto_33
.end method

.method protected onStop()V
    .registers 5

    .prologue
    .line 778
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onStop()V

    .line 779
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onStop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 781
    .local v0, "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    goto :goto_29

    .line 783
    .end local v0    # "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    :cond_39
    return-void
.end method

.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2737
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openAssetForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2772
    const-string v1, "file:///android_asset/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2773
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2774
    .local v0, "am":Landroid/content/res/AssetManager;
    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2778
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :goto_1a
    return-object v1

    .line 2775
    :cond_1b
    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2776
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object v1

    goto :goto_1a

    .line 2778
    :cond_2c
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    goto :goto_1a
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .prologue
    .line 635
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->generateNewRequestCode()I

    move-result v0

    .line 636
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;
    .param p2, "requestCode"    # I

    .prologue
    .line 648
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 649
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    if-nez v0, :cond_1b

    .line 650
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method public registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnClearListener;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    return-void
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 811
    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 748
    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 761
    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 819
    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnPauseListener;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnResumeListener;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnStopListener;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 787
    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .registers 7
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "length"    # I
    .param p3, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .prologue
    .line 704
    new-instance v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 705
    .local v1, "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    invoke-direct {p0, p1, p3}, Lcom/google/appinventor/components/runtime/Form;->generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object v0

    .line 706
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    return-void
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errorNumber"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1038
    const-string v0, "FORM_RUNTIME_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "functionName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v0, "FORM_RUNTIME_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorNumber is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v0, "FORM_RUNTIME_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1042
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 9
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 2142
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 2143
    .local v0, "cHeight":I
    if-nez v0, :cond_13

    .line 2144
    move v1, p2

    .line 2145
    .local v1, "fHeight":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$10;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2153
    .end local v1    # "fHeight":I
    :cond_13
    const/16 v2, -0x3e8

    if-gt p2, v2, :cond_21

    .line 2154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v2

    add-int/lit16 v3, p2, 0x3e8

    neg-int v3, v3

    mul-int/2addr v2, v3

    div-int/lit8 p2, v2, 0x64

    .line 2157
    :cond_21
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 2160
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 2161
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 9
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 2118
    .local v0, "cWidth":I
    if-nez v0, :cond_13

    .line 2119
    move v1, p2

    .line 2120
    .local v1, "fWidth":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$9;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2128
    .end local v1    # "fWidth":I
    :cond_13
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form.setChildWidth(): width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parent Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2129
    const/16 v2, -0x3e8

    if-gt p2, v2, :cond_49

    .line 2130
    add-int/lit16 v2, p2, 0x3e8

    neg-int v2, v2

    mul-int/2addr v2, v0

    div-int/lit8 p2, v2, 0x64

    .line 2134
    :cond_49
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 2137
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 2138
    return-void
.end method

.method setYandexTranslateTagline()V
    .registers 2

    .prologue
    .line 2371
    const-string v0, "<p><small>Language translation powered by Yandex.Translate</small></p>"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    .line 2372
    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "nextFormName"    # Ljava/lang/String;
    .param p2, "startupValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 2026
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNewForm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2030
    .local v0, "activityIntent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2031
    if-nez p2, :cond_b7

    const-string v2, "open another screen"

    .line 2034
    .local v2, "functionName":Ljava/lang/String;
    :goto_40
    if-eqz p2, :cond_ba

    .line 2035
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartNewForm about to JSON encode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2037
    .local v3, "jValue":Ljava/lang/String;
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartNewForm got JSON encoding:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :goto_76
    const-string v4, "APP_INVENTOR_START"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2044
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    .line 2045
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to start new form"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :try_start_95
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNewForm starting activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2049
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_b6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_95 .. :try_end_b6} :catch_bd

    .line 2054
    :goto_b6
    return-void

    .line 2031
    .end local v2    # "functionName":Ljava/lang/String;
    .end local v3    # "jValue":Ljava/lang/String;
    :cond_b7
    const-string v2, "open another screen with start value"

    goto :goto_40

    .line 2039
    .restart local v2    # "functionName":Ljava/lang/String;
    :cond_ba
    const-string v3, ""

    .restart local v3    # "jValue":Ljava/lang/String;
    goto :goto_76

    .line 2050
    :catch_bd
    move-exception v1

    .line 2051
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/16 v4, 0x386

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_b6
.end method

.method protected toastAllowed()Z
    .registers 7

    .prologue
    .line 2458
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2459
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 2460
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 2461
    const/4 v2, 0x1

    .line 2463
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .prologue
    .line 657
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 658
    .local v3, "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 659
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 660
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 663
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    :cond_2c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 664
    .local v2, "key":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 668
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_42
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 669
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 670
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;>;"
    :cond_4c
    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 671
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 672
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 673
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_4c

    .line 674
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4c

    .line 677
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;"
    :cond_71
    return-void
.end method

.method public unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    return-void
.end method

.method protected updateTitle()V
    .registers 3

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setTitle(Ljava/lang/String;)V

    .line 2557
    return-void
.end method
