Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CF873858F
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jun 2023 15:44:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qBy7x-0000bX-1T;
	Wed, 21 Jun 2023 13:44:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mirimmad@outlook.com>) id 1qBoum-00005G-OC
 for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 03:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x0dra68gXDf7npP7R65gJh3sSegOHMHMAAb/3GlGBRo=; b=IPg59/YrpXFuTxc0WGcplXx8Mq
 9qoXj9f2vqcWs5Oin8QNWnXMUU4iBOPJUchxCAvvkHmF4MPPVRBLwYB6Pa36KxNepoH5+8aBOLUcy
 Jh1MOzaRu+gDx5rpQpSObKamyqjt0gOu8ZSqkuOVplXcGaCpRS6UP2hD2Ndx/3M1376M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x0dra68gXDf7npP7R65gJh3sSegOHMHMAAb/3GlGBRo=; b=gEtpNmIbfiLgu3Cv7dsQddA61x
 dU/s766YFN68Qq9UBAhQ7/wObGZTDHxwyg6j0SeuVigG3LPn+TqO7HmfMhEu+Halpk5JtpiMagK6w
 wiVOA4FP21SIhxv35qAs21+ILixgGxuNTyXl6zwTQVJNRMoEA4hZfCsZyaRqR204SPV0=;
Received: from mail-bn8nam12olkn2019.outbound.protection.outlook.com
 ([40.92.21.19] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBouj-0001f4-HY for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 03:53:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuTCXhFiBxF60yumnYcC4SPNO9tuGVeYdVPdaLoq7Fn+yZyszHHuM2Dw8jVEMbzaemBvaB0TX/4YFfmZqmkSoARbbsDLGuxstuu+j7Xl9HxybUkDZb8cRJY90/OhZQYPxhKObK9ky3ghAu8uHBSKEFnq1aJqAt52WlytuNQSkfW5jfSiaLxqg3yqlKsXXS1qW3IGioDlUb2sowxp5cXvUmTxq2bZckziBWyEp0Yigw6Oa2FF9j4Ym4ySJSppdhNZo8y8+Of4v++1r2VhDFyPC40HFtAsKp1bvdxh5dXvh+JhoT0Ex/i5SdDpVSAQ/936iW7ZxkbdM0DJEX6Y2ncBLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x0dra68gXDf7npP7R65gJh3sSegOHMHMAAb/3GlGBRo=;
 b=RyDoTsTyOKG9mcOSaDNSfVdT1tNt6AvJ/+7JnEiVp9813gdtSYKjMvax9NexFUHyv0X9ga3mR1n+H/vyFYuj3ShRTyiOoqRMVue9yn55ZdIMsvoV0rdXk5t6Ea1RWhWv2kmk8Sez0z9QuWOg/XeoY1UvEMH6qo8wNwVRjXn5PW3It53iXjrbxkjjt1kneVXxSD0R7uH6yekxg/X787GjktmMoEyb7fNV9XD70ZJn5yimfvkXwIaXjbv8+xB3kzkhlJTh45IG1BB4YCZX9BsP7ZA42eRdfm3IlM0XJS8AvKagl7+CwNUIkSaRnCGZIIJ+sl2SbdliFvmnuE46QBbrLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x0dra68gXDf7npP7R65gJh3sSegOHMHMAAb/3GlGBRo=;
 b=HIC0MJ2VxAFIGA1g1ByF01nfCzT9jc7gCc0cjIYNhqrru60jGexNSeCQODscU8lwYfAkT+9srztdt0sN5iWWQGG6Hj59/Zma1NLGyruEziBofE8B7VEHLvPvAo4qyex4eb3gd4iCshor/Ne3BRg1FYLI4O5lSVosmZcQWLvlOIJXLDpO/+2fXWhJfI1wwD1zLo9435ZpjLNqKR6EQ58znc2zYY6K0lYyQuXqm38evGye1Td4wF0IwplAby4O6kJ65a3TVsEokFn/iw5pTp5H1stlKN4Eem731PQQcMG2paEcalBBi8tYWjzRJg2EqlyFtKq1+4c2PBkFUQiE1X2fOA==
Received: from CY5PR12MB6455.namprd12.prod.outlook.com (2603:10b6:930:35::10)
 by CY8PR12MB8066.namprd12.prod.outlook.com (2603:10b6:930:70::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Wed, 21 Jun
 2023 03:53:42 +0000
Received: from CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::f849:c65e:3d5b:5d]) by CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::f849:c65e:3d5b:5d%5]) with mapi id 15.20.6521.020; Wed, 21 Jun 2023
 03:53:42 +0000
From: Immad Mir <mirimmad@outlook.com>
To: Immad Mir <mirimmad@outlook.com>
Thread-Topic: [PATCH] FS: JFS: Fix null-ptr-deref Read in txBegin
Thread-Index: AQHZX/75csqQal6xKEyDlGkswLMrNK+VJ7Ny
Date: Wed, 21 Jun 2023 03:53:42 +0000
Message-ID: <CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com>
References: <CY4PR1801MB1910F3DE3B29710C1D7A9226C68A9@CY4PR1801MB1910.namprd18.prod.outlook.com>
In-Reply-To: <CY4PR1801MB1910F3DE3B29710C1D7A9226C68A9@CY4PR1801MB1910.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [jvnN11P/CogINUH+0/J89nbXiU9iN3xM]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR12MB6455:EE_|CY8PR12MB8066:EE_
x-ms-office365-filtering-correlation-id: 126acafc-c5fa-483b-c381-08db720b1ade
x-ms-exchange-slblob-mailprops: V85gaVfRD4+01U1U5L0H0gcqwa/2RtrTD1w0W44FTdo6tAE6k+JpvLLMjymHaqorTwU4/L0NO0OMFGp86193+CZ5zBUYkDgkVUXTj+VpUNu04OZbH1o6hairj9zx6bFxrR++aYK8Lp6gAhPzwYw0oPj1SXB+Ijq0AsMOXV0DO6T0iZUMNGQNOqZUELXMtYRL3j7VmJIcs16pwXnojR/HbEr35+uXh73q6kLHkFhaxZhCpkv7D4pgAZ3ZJ7IORE/YpLR39UeevMA+2TpCP2FmJK4NhKGM68YR9j88LSkBAeq83IrRnC3p/thqOap5vQoi+lZX79naoSTZH9mjUl71j6Ne10GKOGSAsMii+xIs+me8ZNuRMDtoefOC+qAGBIVdDZDsK9idebGazR0ApMDEYx0sYkpQg7xpVA1IsSsBVhGnxD584fGRktpL0I+4y2xQBH546TwQZFAZkobKaiNyJGPa5aHhSF9T6MHFC4or3wLAW0K1+EGY33I4g9U6M7u8kH8NubMxEVRY3dHwWexN//bcIykz3luUONegUiPTlEwjLn4/6KqxRDpiPIRs2X0bmzSIjG6HDsbJQadsAvBZ79YH1DUNBFbD8JfKeaqlBx8VLGy6XuUdVp/XvzrBpRS3G9EGgbZUrXwP5LeBzShGqIbY1p1YtdQe5/TvTpVJWr3vOYnlIeo7CfrovCWluDlL0l1lRyZrLj6dWFilDKw/IZyM6CGicmiTURjkHyn8q7EI2TFk5EAzwVRcN9LfuOm3nde36rTHXRXtJXdwBNfZwfZC2rmKCGmexoIS0aKapgveal74qOqdovP69M3UNCickiyU65maVyX2pfHtql5n0A==
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OaslYFjbjs+kQuQxUykAZr160ert8BSx5LfIX387K6KhcccJnH5BHjjUfVuurI5yEPiVzCkQai0Ix9mlNJ4xVfHQzWhpGmfwBWBjXGw1c7FFwo/wUSzsjMqxfwZoNl9hSZjh6BWI3A67gpTSBb2VNmP0GowqWlOzakXX70gKmyqE9xzsC/sW7T3Kl1jPTNuRAvrFJw7VwV1Inf95jsVt3wFjBAfeFucPC+aCAMRSiXUFyoUOlDxxYYsCVwzXNfFZYsLTj7u2c9oLXy9kIwS235FiiPbOd4DHW13Oj8roDJXGh2QNX+U6E5PkjrmUo03E0USt0cujlMSOjiDR+sYz0FkZ6K2DbAXAs/VJbhIPumJ1ZOQoC/w/f5bKaii0cFWnqLGHWMtvUhiAVzgKFDa6VH29n1j1J38jQT426IwNDlWR8L52PDJ1+djR00/YoqG6507zVFSxdsg34NETquiEN+Dw3IFueazuzgi1d1HDR32spLFhHGHAAXReJwvcBzYRDTFbGKeH8TuB1nKn36SzxT9dgk5OTdF6cNpA6ZIRMTaeaLih8FK6zpBrvCJxy1DMyCcYA8eJLTCsjI+x1ugOuHYyVxyU6aGXpM7JIvdUQKpr87dnfbea8CQFP4xiYmRhpF5ZGU+02mkNGd4BfGKIwpYtZS08KX07eedoEyzv/hMqw0myaxXN2ppSt3S9jGCf
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oFyC1887Denk8Zq+F42My9teGm9oE00WdYnva5ypQad7WOZg22TfRE6xcA//?=
 =?us-ascii?Q?JqHZZ3ehWdBcvUmsF8nSFMbm9I91vUj41rSMGqQlvFaHQEPwHc3Kasqfp157?=
 =?us-ascii?Q?pGeen1uQtUaw8803io90s9QpqEFuAVNrk3p0sV+4DeWDsir6PhcNFAinWD3r?=
 =?us-ascii?Q?Z39O+WjguRoAG1TrtgdINiOIJUlYjIdBpQdLmRyTixCxED6CZCa9xuORKOE/?=
 =?us-ascii?Q?luw7RAhZYT4E0zK2JdVWpsCNWD1mC3iZRFXDLpA2dnWr9RnSu7M1ubV9MNUm?=
 =?us-ascii?Q?S5BIRpMRJqlzMHc31frFxb2CcKcz2COehqKz/kphriRdEywQwm+pL7/CL0/8?=
 =?us-ascii?Q?c7M3wUxEn+83jfOc511Qj22kwi/e9BPQNGqJMvzt1FHIdj2KnTh8pc0gRkc8?=
 =?us-ascii?Q?Q4MG2Q3fe2OiRPcBXCZZAHEzpQ9PPjsQ+0mFMQk5Bi3JxxGnol+G0+h/EmTZ?=
 =?us-ascii?Q?vLGCn7eLwson4L3nNhKzPHuGw7IjBQmC/MAsD4OO53Psv2hgZevMzPoLIsah?=
 =?us-ascii?Q?7L6ThggPQ6PCsuwpnST9lK+az0MCjYaGujsobpessT4kHFyOenJAvAIOBfhk?=
 =?us-ascii?Q?Z1x7zhlo3Eh5ZwJPkM46NtAcaMqetEFa3asEU6KSIXiuDbzfdRcyb6GbEHc1?=
 =?us-ascii?Q?oE1jJu/Pf788crCaDPmfUVWxVk4+7rIqTldEmqjPf6BLYMJKIfmhS16L/+4p?=
 =?us-ascii?Q?qfmlP1X5cZsFsLW5gZeQ9NP5Fm7kZItO/bCsC0Z97forv+TpA4aNdYGXb1XU?=
 =?us-ascii?Q?rtrpXTRPZGRKoSvcTxhdkGV6jg+A7JUqzgjWcRZEuWKfpoLejW+wGwqTnYgZ?=
 =?us-ascii?Q?EpVpss9bcQLj+3wRzJhlJhWZYjNjmn2iCRN/tepbUQ4Jug2O0ghfaq0z0ClY?=
 =?us-ascii?Q?H81YZpaUkuFXAmGgTl0k9eYLbDQ2gaaukgU1kkz9+6JakcVq5WafeGLkGxKA?=
 =?us-ascii?Q?ZmXxkaa7nFA4qzrvOkyk0tbP27o7KV7jqCHzMfxvMMoMKl2gSDY/nOOmhrWP?=
 =?us-ascii?Q?f07xZs/a9Ce6QRkoLIqERayEHzlCmJhFAH/KLpl2VDAQsCxWju590A232ExQ?=
 =?us-ascii?Q?8y3u0/Iz26HfrPc2tS+CUYhj6k5hsjcOMFb4PJkw35Etu8yj24rBsXpmeh4q?=
 =?us-ascii?Q?hr7I5gvnV7EJBbmmR1tZQLrsrNCBQfh1ubEab/EKjjyd4InFe2o3c0jAVP+K?=
 =?us-ascii?Q?h8OYQzNZQMWNrb8yHpUgxILvnPWJIrZQ7LOV5UOk4Jr3HKx03MYWaCMieYU?=
 =?us-ascii?Q?=3D?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6455.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 126acafc-c5fa-483b-c381-08db720b1ade
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 03:53:42.3807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8066
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi. May I please request a review on this patch. Thanks,
 Immad From: mirimmad@outlook.com Sent: Sunday, March 26,
 2023 9:51:15 PM Cc: mirimmad@outlook.com
 ; skhan@linuxfoundation.org ; Immad Mir ; syzbot+f1faa20eec55e0c8644c@ [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.21.19 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.21.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mirimmad[at]outlook.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qBouj-0001f4-HY
X-Mailman-Approved-At: Wed, 21 Jun 2023 13:44:03 +0000
Subject: Re: [Jfs-discussion] [PATCH] FS: JFS: Fix null-ptr-deref Read in
 txBegin
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com"
 <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 Immad Mir <mirimmad17@gmail.com>
Content-Type: multipart/mixed; boundary="===============4310934731062290123=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============4310934731062290123==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DACY5PR12MB6455namp_"

--_000_CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DACY5PR12MB6455namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hi. May I please request a review on this patch.

Thanks,
Immad

________________________________
From: mirimmad@outlook.com <mirimmad@outlook.com>
Sent: Sunday, March 26, 2023 9:51:15 PM
Cc: mirimmad@outlook.com <mirimmad@outlook.com>; skhan@linuxfoundation.org =
<skhan@linuxfoundation.org>; Immad Mir <mirimmad17@gmail.com>; syzbot+f1faa=
20eec55e0c8644c@syzkaller.appspotmail.com <syzbot+f1faa20eec55e0c8644c@syzk=
aller.appspotmail.com>; Dave Kleikamp <shaggy@kernel.org>; jfs-discussion@l=
ists.sourceforge.net <jfs-discussion@lists.sourceforge.net>; linux-kernel@v=
ger.kernel.org <linux-kernel@vger.kernel.org>
Subject: [PATCH] FS: JFS: Fix null-ptr-deref Read in txBegin

From: Immad Mir <mirimmad17@gmail.com>

syzkaller reported the following issue:

BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrume=
nted.h:72 [inline]
BUG: KASAN: null-ptr-deref in _test_bit include/asm-generic/bitops/instrume=
nted-non-atomic.h:141 [inline]
BUG: KASAN: null-ptr-deref in txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
Read of size 8 at addr 0000000000000040 by task syz-executor.0/5098

CPU: 0 PID: 5098 Comm: syz-executor.0 Not tainted 6.3.0-rc3-syzkaller-00005=
-g7d31677bb7b1 #0
Hardware name: Google Compute Engine/Google Compute Engine, BIOS Google 03/=
02/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 print_report+0xe6/0x540 mm/kasan/report.c:433
 kasan_report+0x176/0x1b0 mm/kasan/report.c:536
 kasan_check_range+0x283/0x290 mm/kasan/generic.c:187
 instrument_atomic_read include/linux/instrumented.h:72 [inline]
 _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline=
]
 txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
 jfs_link+0x1ac/0x5e0 fs/jfs/namei.c:802
 vfs_link+0x4ed/0x680 fs/namei.c:4522
 do_linkat+0x5cc/0x9e0 fs/namei.c:4593
 __do_sys_linkat fs/namei.c:4621 [inline]
 __se_sys_linkat fs/namei.c:4618 [inline]
 __x64_sys_linkat+0xdd/0xf0 fs/namei.c:4618
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The issue can be resolved by checking whethere "log"
for a given superblock exists in the jfs_link function
before beginning a transaction.

Tested with syzbot.
Reported-by: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=3Dbe7e52c50c5182cc09a09ea6fc4564=
46b2039de3

Signed-off-by: Immad Mir <mirimmad17@gmail.com>
---
 fs/jfs/namei.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index b29d68b5e..cd43b68e2 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -799,6 +799,8 @@ static int jfs_link(struct dentry *old_dentry,
         if (rc)
                 goto out;

+       if (!(JFS_SBI(ip->i_sb)->log))
+               goto out;
         tid =3D txBegin(ip->i_sb, 0);

         mutex_lock_nested(&JFS_IP(dir)->commit_mutex, COMMIT_MUTEX_PARENT)=
;
--
2.40.0



--_000_CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DACY5PR12MB6455namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div style=3D""><br>
</div>
<div dir=3D"auto">
<div><br>
</div>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">Hi. May I please reque=
st a review on this patch.<br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto"><br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">Thanks,</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">Immad</div>
<div dir=3D"auto">
<div id=3D"mail-editor-reference-message-container" dir=3D"auto"><br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>From:</strong>=
 mirimmad@outlook.com &lt;mirimmad@outlook.com&gt;<br>
<strong>Sent:</strong> Sunday, March 26, 2023 9:51:15 PM<br>
<strong>Cc:</strong> mirimmad@outlook.com &lt;mirimmad@outlook.com&gt;; skh=
an@linuxfoundation.org &lt;skhan@linuxfoundation.org&gt;; Immad Mir &lt;mir=
immad17@gmail.com&gt;; syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.co=
m &lt;syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com&gt;;
 Dave Kleikamp &lt;shaggy@kernel.org&gt;; jfs-discussion@lists.sourceforge.=
net &lt;jfs-discussion@lists.sourceforge.net&gt;; linux-kernel@vger.kernel.=
org &lt;linux-kernel@vger.kernel.org&gt;<br>
<strong>Subject:</strong> [PATCH] FS: JFS: Fix null-ptr-deref Read in txBeg=
in<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">From: Immad Mir &lt;mirimmad17@gmail.com&gt;<br>
<br>
syzkaller reported the following issue:<br>
<br>
BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrume=
nted.h:72 [inline]<br>
BUG: KASAN: null-ptr-deref in _test_bit include/asm-generic/bitops/instrume=
nted-non-atomic.h:141 [inline]<br>
BUG: KASAN: null-ptr-deref in txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366<b=
r>
Read of size 8 at addr 0000000000000040 by task syz-executor.0/5098<br>
<br>
CPU: 0 PID: 5098 Comm: syz-executor.0 Not tainted 6.3.0-rc3-syzkaller-00005=
-g7d31677bb7b1 #0<br>
Hardware name: Google Compute Engine/Google Compute Engine, BIOS Google 03/=
02/2023<br>
Call Trace:<br>
&nbsp;&lt;TASK&gt;<br>
&nbsp;__dump_stack lib/dump_stack.c:88 [inline]<br>
&nbsp;dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106<br>
&nbsp;print_report+0xe6/0x540 mm/kasan/report.c:433<br>
&nbsp;kasan_report+0x176/0x1b0 mm/kasan/report.c:536<br>
&nbsp;kasan_check_range+0x283/0x290 mm/kasan/generic.c:187<br>
&nbsp;instrument_atomic_read include/linux/instrumented.h:72 [inline]<br>
&nbsp;_test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [i=
nline]<br>
&nbsp;txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366<br>
&nbsp;jfs_link+0x1ac/0x5e0 fs/jfs/namei.c:802<br>
&nbsp;vfs_link+0x4ed/0x680 fs/namei.c:4522<br>
&nbsp;do_linkat+0x5cc/0x9e0 fs/namei.c:4593<br>
&nbsp;__do_sys_linkat fs/namei.c:4621 [inline]<br>
&nbsp;__se_sys_linkat fs/namei.c:4618 [inline]<br>
&nbsp;__x64_sys_linkat+0xdd/0xf0 fs/namei.c:4618<br>
&nbsp;do_syscall_x64 arch/x86/entry/common.c:50 [inline]<br>
&nbsp;do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80<br>
&nbsp;entry_SYSCALL_64_after_hwframe+0x63/0xcd<br>
<br>
The issue can be resolved by checking whethere &quot;log&quot;<br>
for a given superblock exists in the jfs_link function<br>
before beginning a transaction.<br>
<br>
Tested with syzbot.<br>
Reported-by: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com<br>
Link: <a href=3D"https://syzkaller.appspot.com/bug?id=3Dbe7e52c50c5182cc09a=
09ea6fc456446b2039de3">
https://syzkaller.appspot.com/bug?id=3Dbe7e52c50c5182cc09a09ea6fc456446b203=
9de3</a><br>
<br>
Signed-off-by: Immad Mir &lt;mirimmad17@gmail.com&gt;<br>
---<br>
&nbsp;fs/jfs/namei.c | 2 ++<br>
&nbsp;1 file changed, 2 insertions(+)<br>
<br>
diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c<br>
index b29d68b5e..cd43b68e2 100644<br>
--- a/fs/jfs/namei.c<br>
+++ b/fs/jfs/namei.c<br>
@@ -799,6 +799,8 @@ static int jfs_link(struct dentry *old_dentry,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (rc)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; goto out;<br>
<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!(JFS_SBI(ip-&gt;i_sb)-&gt;log))<=
br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; goto out;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tid =3D txBegin(ip-&gt;i_s=
b, 0);<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_lock_nested(&amp;JFS=
_IP(dir)-&gt;commit_mutex, COMMIT_MUTEX_PARENT);<br>
--<br>
2.40.0<br>
<br>
</div>
</span></font><br>
</div>
</div>
</body>
</html>

--_000_CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DACY5PR12MB6455namp_--


--===============4310934731062290123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4310934731062290123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============4310934731062290123==--

