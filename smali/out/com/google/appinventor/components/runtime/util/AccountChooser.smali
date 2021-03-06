.class public Lcom/google/appinventor/components/runtime/util/AccountChooser;
.super Ljava/lang/Object;
.source "AccountChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PREFERENCE:Ljava/lang/String; = "account"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final LOG_TAG:Ljava/lang/String; = "AccountChooser"

.field private static final NO_ACCOUNT:Ljava/lang/String; = ""


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private activity:Landroid/app/Activity;

.field private chooseAccountPrompt:Ljava/lang/String;

.field private preferencesKey:Ljava/lang/String;

.field private service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/AccountChooser;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/AccountChooser;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 112
    array-length v2, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2a

    aget-object v0, p2, v1

    .line 113
    .local v0, "account":Landroid/accounts/Account;
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 114
    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chose account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_26
    return-object v0

    .line 112
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2a
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private createAccount()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 123
    const-string v0, "AccountChooser"

    const-string v1, "Adding auth token account ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    .line 126
    .local v10, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_17
    invoke-interface {v10}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 127
    .local v11, "result":Landroid/os/Bundle;
    const-string v0, "authAccount"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "accountName":Ljava/lang/String;
    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/accounts/OperationCanceledException; {:try_start_17 .. :try_end_3b} :catch_3c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_17 .. :try_end_3b} :catch_42
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3b} :catch_47

    .line 137
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v11    # "result":Landroid/os/Bundle;
    :goto_3b
    return-object v8

    .line 130
    :catch_3c
    move-exception v9

    .line 131
    .local v9, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v9}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .end local v9    # "e":Landroid/accounts/OperationCanceledException;
    :goto_40
    move-object v8, v3

    .line 137
    goto :goto_3b

    .line 132
    :catch_42
    move-exception v9

    .line 133
    .local v9, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v9}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_40

    .line 134
    .end local v9    # "e":Landroid/accounts/AuthenticatorException;
    :catch_47
    move-exception v9

    .line 135
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40
.end method

.method private getPersistedAccountName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private persistAccountName(Ljava/lang/String;)V
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persisting account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    return-void
.end method

.method private selectAccount([Landroid/accounts/Account;)Ljava/lang/String;
    .registers 10
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 141
    new-instance v3, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v3}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 142
    .local v3, "queue":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<Ljava/lang/String;>;"
    new-instance v4, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V

    .line 143
    .local v4, "select":Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->start()V

    .line 144
    const-string v5, "AccountChooser"

    const-string v6, "Select: waiting for user..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "account":Ljava/lang/String;
    :try_start_15
    invoke-virtual {v3}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1d} :catch_3f

    .line 151
    :goto_1d
    const-string v5, "AccountChooser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v1, 0x0

    .end local v1    # "account":Ljava/lang/String;
    :cond_3e
    return-object v1

    .line 148
    .restart local v1    # "account":Ljava/lang/String;
    :catch_3f
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1d
.end method


# virtual methods
.method public findAccount()Landroid/accounts/Account;
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 68
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 71
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 72
    aget-object v3, v2, v6

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 73
    aget-object v0, v2, v6

    .line 108
    :cond_17
    :goto_17
    return-object v0

    .line 78
    :cond_18
    array-length v4, v2

    if-nez v4, :cond_38

    .line 79
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->createAccount()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "accountName":Ljava/lang/String;
    if-eqz v1, :cond_2f

    .line 81
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    aget-object v0, v3, v6

    goto :goto_17

    .line 84
    :cond_2f
    const-string v4, "AccountChooser"

    const-string v5, "User failed to create a valid account"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 85
    goto :goto_17

    .line 92
    .end local v1    # "accountName":Ljava/lang/String;
    :cond_38
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPersistedAccountName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "accountName":Ljava/lang/String;
    if-eqz v1, :cond_44

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_17

    .line 100
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_44
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->selectAccount([Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_52

    .line 102
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    goto :goto_17

    .line 107
    :cond_52
    const-string v4, "AccountChooser"

    const-string v5, "User failed to choose an account"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 108
    goto :goto_17
.end method

.method public forgetAccountName()V
    .registers 3

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method
