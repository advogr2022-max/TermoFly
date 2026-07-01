.class public final Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field private static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final ASYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric."

.field public static final CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final DIGESTS:[Ljava/lang/String;

.field private static final DIGEST_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.digest."

.field private static final KEYSTORES:[Ljava/lang/String;

.field private static final KEYSTORE_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.keystore."

.field public static final PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final SECURE_RANDOMS:[Ljava/lang/String;

.field private static final SECURE_RANDOM_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.drbg."

.field private static final SYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final SYMMETRIC_MACS:[Ljava/lang/String;

.field private static final SYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric."

.field private static info:Ljava/lang/String; = "BouncyCastle Security Provider v1.56"

.field private static final keyInfoConverters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "PBEPBKDF2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PBEPKCS12"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "TLSKDF"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SipHash"

    aput-object v2, v1, v3

    const-string v2, "Poly1305"

    aput-object v2, v1, v4

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    const/16 v1, 0x22

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AES"

    aput-object v2, v1, v3

    const-string v2, "ARC4"

    aput-object v2, v1, v4

    const-string v2, "Blowfish"

    aput-object v2, v1, v5

    const-string v2, "Camellia"

    aput-object v2, v1, v0

    const-string v2, "CAST5"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const-string v2, "CAST6"

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const-string v2, "ChaCha"

    const/4 v8, 0x6

    aput-object v2, v1, v8

    const-string v2, "DES"

    const/4 v9, 0x7

    aput-object v2, v1, v9

    const-string v2, "DESede"

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v2, "GOST28147"

    const/16 v11, 0x9

    aput-object v2, v1, v11

    const-string v2, "Grainv1"

    const/16 v12, 0xa

    aput-object v2, v1, v12

    const-string v2, "Grain128"

    const/16 v13, 0xb

    aput-object v2, v1, v13

    const-string v2, "HC128"

    const/16 v14, 0xc

    aput-object v2, v1, v14

    const-string v2, "HC256"

    const/16 v15, 0xd

    aput-object v2, v1, v15

    const-string v2, "IDEA"

    const/16 v16, 0xe

    aput-object v2, v1, v16

    const-string v2, "Noekeon"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "RC2"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "RC5"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "RC6"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    const-string v2, "Rijndael"

    const/16 v17, 0x13

    aput-object v2, v1, v17

    const-string v2, "Salsa20"

    const/16 v17, 0x14

    aput-object v2, v1, v17

    const-string v2, "SEED"

    const/16 v17, 0x15

    aput-object v2, v1, v17

    const-string v2, "Serpent"

    const/16 v17, 0x16

    aput-object v2, v1, v17

    const-string v2, "Shacal2"

    const/16 v17, 0x17

    aput-object v2, v1, v17

    const-string v2, "Skipjack"

    const/16 v17, 0x18

    aput-object v2, v1, v17

    const-string v2, "SM4"

    const/16 v17, 0x19

    aput-object v2, v1, v17

    const-string v2, "TEA"

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    const-string v2, "Twofish"

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    const-string v2, "Threefish"

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    const-string v2, "VMPC"

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    const-string v2, "VMPCKSA3"

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    const-string v2, "XTEA"

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    const-string v2, "XSalsa20"

    const/16 v17, 0x20

    aput-object v2, v1, v17

    const-string v2, "OpenSSLPBKDF"

    const/16 v17, 0x21

    aput-object v2, v1, v17

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "X509"

    aput-object v2, v1, v3

    const-string v2, "IES"

    aput-object v2, v1, v4

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "DSA"

    aput-object v2, v1, v3

    const-string v2, "DH"

    aput-object v2, v1, v4

    const-string v2, "EC"

    aput-object v2, v1, v5

    const-string v2, "RSA"

    aput-object v2, v1, v0

    const-string v2, "GOST"

    aput-object v2, v1, v6

    const-string v2, "ECGOST"

    aput-object v2, v1, v7

    const-string v2, "ElGamal"

    aput-object v2, v1, v8

    const-string v2, "DSTU4145"

    aput-object v2, v1, v9

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GOST3411"

    aput-object v2, v1, v3

    const-string v2, "Keccak"

    aput-object v2, v1, v4

    const-string v2, "MD2"

    aput-object v2, v1, v5

    const-string v2, "MD4"

    aput-object v2, v1, v0

    const-string v2, "MD5"

    aput-object v2, v1, v6

    const-string v2, "SHA1"

    aput-object v2, v1, v7

    const-string v2, "RIPEMD128"

    aput-object v2, v1, v8

    const-string v2, "RIPEMD160"

    aput-object v2, v1, v9

    const-string v2, "RIPEMD256"

    aput-object v2, v1, v10

    const-string v2, "RIPEMD320"

    aput-object v2, v1, v11

    const-string v2, "SHA224"

    aput-object v2, v1, v12

    const-string v2, "SHA256"

    aput-object v2, v1, v13

    const-string v2, "SHA384"

    aput-object v2, v1, v14

    const-string v2, "SHA512"

    aput-object v2, v1, v15

    const-string v2, "SHA3"

    aput-object v2, v1, v16

    const-string v2, "Skein"

    const/16 v6, 0xf

    aput-object v2, v1, v6

    const-string v2, "SM3"

    const/16 v6, 0x10

    aput-object v2, v1, v6

    const-string v2, "Tiger"

    const/16 v6, 0x11

    aput-object v2, v1, v6

    const-string v2, "Whirlpool"

    const/16 v6, 0x12

    aput-object v2, v1, v6

    const-string v2, "Blake2b"

    const/16 v6, 0x13

    aput-object v2, v1, v6

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BC"

    aput-object v1, v0, v3

    const-string v1, "BCFKS"

    aput-object v1, v0, v4

    const-string v1, "PKCS12"

    aput-object v1, v0, v5

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DRBG"

    aput-object v1, v0, v3

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "BC"

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-wide v2, 0x3ff8f5c28f5c28f6L    # 1.56

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method private static getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$Mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$Mappings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_2
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$Mappings : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setup()V
    .locals 2

    const-string v0, "org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.drbg."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathValidator.RFC3281"

    const-string v1, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathBuilder.RFC3281"

    const-string v1, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathValidator.RFC3280"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathBuilder.RFC3280"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Collection"

    const-string v1, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Multi"

    const-string v1, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate provider key ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    check-cast v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
