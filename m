Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E19E30760A
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000RG-My; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=6551138a8=Damien.LeMoal@wdc.com>)
 id 1l51iS-0001HA-6A
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7dHgs/1VLBXJ5Fid/0F/6cbHkJ0A+oW1xrqX9+A0GgQ=; b=ZrazgX56Oss3aA5Z/7D9rMw+0m
 YmtELzKCV2HfQwDhAD8NZP1CAgEIWCl1Oer0NyZhMlTkfUbq0DBC5xizgkFB5aor7G9eUygzJU7/i
 zxBtys03S21HDo+3owKE0X6N13/dfTfXpxuM2a8AvC5ahtorF3yC9sp0moMFOGJd/RjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:Message-ID
 :Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7dHgs/1VLBXJ5Fid/0F/6cbHkJ0A+oW1xrqX9+A0GgQ=; b=k
 QYLOKayciPE2VkTc3RGfHtP0ZvZH6XCg+wEQ8CuJGskKMcPh4DpUn3BSkq26mTYI1Zxd9fLxWuaWI
 8pL5HQT3cWkMIptLUiTdB1DURo9UKU5w8DsFxi0u40C0KwzbGF+JKSPzj2ZH/Bb8NIyE4vDEWDOGN
 8KAtkby39To8A+b4=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51iG-00DaIR-Uh
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818852; x=1643354852;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=T2M8NUVLME4aRV2htfsE34grqMKC5BmKNz4/COkl3ZQ=;
 b=kU3jXi7Hm+J5yG2RGTr+A/XkTZry0jVVnYYazijGKSR+IR+ZzxQblURU
 6j4FyIJa/jl5KdeUSK/xXxvT2LCeDNut5MO7tiU6ci7lIWqVfutH6hJxr
 E1+uog8Gsr/p7rijebLIhwsD84raXdd30RqjwcdPFMlyqPFCoFgOSvAGq
 fmNdQB7xB7Sy9AdFMNQEKvlPYFLtM/LvMJOeTiF7GTUyNVcDUTnQ1FYoE
 Ku+KGXTPT4sWvcp6lrWwdz8iA/cGszVuFoF5xdwVoTtMLDN9kyVmwWhZO
 JA66B1p2IxqhvmKWksWRHKpUxbXY2oVLfzQ1OyiiSM+yw2WTR2cXDG/09 Q==;
IronPort-SDR: 5meZAAXbPsZyMOd9RQOAURE7ue4N8I0GylPazNiN4F+IkU2Nf7CrEdUTmPOyFzJi7zfeggOiiu
 Gt5Od7xhy+yHk7m31eLzfrafTPyIE2+841Tdhjt9RuKfy1UwsAhsaJEc7TrPpyeonTG5OoNRbW
 jYwfp8qY1//btPd2uEMJY+wlNQ6hUZhFAaCgz+oVCXV8JG1R++3gaALgNG32rpHLVCAPpUvSm5
 ZnyqhIjEF7MhfKsrin8SIf9C2tCW+9kugysfCU7OmxJSUh1jT50kH6wLdq3lVUWVW9JSAnaEIT
 sQI=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268893462"
Received: from mail-sn1nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.53])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:27:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B83E+AQw1n8nLaPpws6ZVk2Dvv0JowLzEH6tW4QBIZHQO5bOyKoRkl9zce6LAfAcYeKNBnUqMBuqWKPapazajsM6mugFl46pUPnH27w2MyNgzfB2U64tU7/YQtksU04S+GWbxUwv7ua6jeuaCXw0Q2a/INcuYW1pZmbpSmGcHX0jgHrsfKIziwmv/KoIW40wdsUPJfmkSsIjxMNkqU8mSH3CYfS72OI5u+QFvQXzGlRrot81kEsbS6zPF3R+md3jI0xbLOthW81i6HkUhnZFc7n6i76TjivEJep1dTrNSJmAcZacixJJoHL5R1ayC6mgKhmUp43MFeS2JhA8RHsWLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7dHgs/1VLBXJ5Fid/0F/6cbHkJ0A+oW1xrqX9+A0GgQ=;
 b=WpVsW1S/kKhHgGTEzveH/WBQWziddYzWdBCW+5peeK2CMYzuM35ikhiL93qQisaU2sh5XUUpBGRi/TFqqx3OmGIe24yyfIzJAQbSDPUcgJl828BlV9USdpsDOoEeDZtHgttMYKmGI1gJsSt+V6kxWrCrBRnN8lSCWDpfiroaO+QmE16osB2eevjAkuP0qNTfCZo6bo3ZQRwiDwhweVFwoM8Ww9mA8MT5yPoo5QtVqHYpRPAG0NbaJNanr+SI0Duz8hOTcNB65u4JLwKXGhuJHAalGmP1VOd5oTVjmseyILk+5VEQB5HpwincSvcGZkpYEkN24oBog5tfK+cn6HqdlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7dHgs/1VLBXJ5Fid/0F/6cbHkJ0A+oW1xrqX9+A0GgQ=;
 b=OmolSAczHKzAAi3bPwvoWo7TGzLvqangGQWi2c5Sh9RFfgjNOdOyzcv9+C8k3UIZaJ+51zzrFKlVtvr1qzTutNDoolRqW7KTSNHEs80Rs9hbYszveqvR3GqoW8LPT57NDFR+VyDiYnlpkJdSihza+fjBRoOc8go2CbQlrPtUGhw=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by BL0PR04MB4852.namprd04.prod.outlook.com (2603:10b6:208:59::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.15; Thu, 28 Jan
 2021 07:27:21 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3784.017; Thu, 28 Jan 2021
 07:27:21 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>, "linux-block@vger.kernel.org"
 <linux-block@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "drbd-dev@lists.linbit.com"
 <drbd-dev@lists.linbit.com>, "xen-devel@lists.xenproject.org"
 <xen-devel@lists.xenproject.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "target-devel@vger.kernel.org"
 <target-devel@vger.kernel.org>, "linux-fscrypt@vger.kernel.org"
 <linux-fscrypt@vger.kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, "linux-nilfs@vger.kernel.org"
 <linux-nilfs@vger.kernel.org>, "ocfs2-devel@oss.oracle.com"
 <ocfs2-devel@oss.oracle.com>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>
Thread-Topic: [RFC PATCH 02/34] block: introduce and use bio_new
Thread-Index: AQHW9UTnP+XqlvwCeEC+5iodtWSeNA==
Date: Thu, 28 Jan 2021 07:27:21 +0000
Message-ID: <BL0PR04MB6514DBA7EDB8EC87A1C20871E7BA9@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-3-chaitanya.kulkarni@wdc.com>
 <BL0PR04MB6514C554B4AC96866BC1B16FE7BA9@BL0PR04MB6514.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: wdc.com; dkim=none (message not signed)
 header.d=none;wdc.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:47a:7b5a:7dfa:1b1e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 98283964-c91e-431c-9fb9-08d8c35e268c
x-ms-traffictypediagnostic: BL0PR04MB4852:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR04MB485290861AB8AD7380809BB0E7BA9@BL0PR04MB4852.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hxj4fa4GkcBNNCunfMw7J9/b9iCM3fJznMuhOWkCQfvwJ0NrAIluFKg3+jXWfl1tLzPUJCh7B78dGsB53Gqk1Z2m7MWGTazT/q4pi5bAn+XOAilmmSdZvZ9sqjmQNXhEiTj4kt72t+S3/drX6amXX9FT+FK55adEN2vnuJcgUNqzT4TxQrX+LcNNGQZnWc1Tlo1+uTv04dXECuuh7Tu9LBWclBuE7jek77LbLzIUJdaPhgbGq6L/Pdx0JqnyYF+FEQPM8881yuui+kueEXVoqlzgBqK5vaKAqGJTqa0aBFevZqZNENtO6og/LDPr5d9E1UWTTP7/Da2oTdLL+35iaIOLalRmCHBRvUY6cEGhYxURyVSG+g4j64QtJxsEF71Nji99U+trtgurQXiLlnDTDGxf+MDnSLAb7nLKVPD/4Kml1pvdzPIUKukEtZD2GxrzabB/3418cwibWgs+12obfmiGrBfi16NV2BeC0p+Se0p+BmqHDY/WZr2ITJIpH7HBw28kQg7FWHu0BZbkFGLyZ1vhLckxE+yPI8cR0tXHr+nJtxvmCqxf3bBjfbGb7Q3/k4D1vq2cQ3zlnKpMfEgb0g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR04MB6514.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(39860400002)(366004)(136003)(376002)(186003)(66476007)(83380400001)(53546011)(5660300002)(66446008)(316002)(8676002)(71200400001)(66556008)(91956017)(86362001)(64756008)(6506007)(2906002)(66946007)(52536014)(7366002)(7406005)(9686003)(33656002)(110136005)(7416002)(55016002)(54906003)(4326008)(76116006)(7696005)(921005)(8936002)(478600001)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?sgomRkWS3uJS/HM3uKXHylAhoSZM+lVQWdt2dHx9bjA8NQXvXFM6Dfv8MW1A?=
 =?us-ascii?Q?iCsEXvQot8m+wWe1prFL3N6W4X/zd4E4zBQMqtLQEJA5H+WTWLCNwdvng6U5?=
 =?us-ascii?Q?SkD6CC9MBeyZGtVMnjn2C+bStrwfe/6T4Mh4yY7H804uejWxG1MgZhnXTjqp?=
 =?us-ascii?Q?f36HcMhJa8fqBRYTB616pNnmAuoeQyPrXZYwSIUFh1bkSg5h3DWdvFdnge8/?=
 =?us-ascii?Q?O9MCM+eECuYQXcaVSUcc0tBlY9mVO1xLxaHa+pFR3r6GyIUZVhAFKPD8DMJf?=
 =?us-ascii?Q?WqsPp+KkYw2miQ2VWu7CKnb5XE/WZZK8NjFYrO+UvBi0zDKD7ZerGy3ioMo0?=
 =?us-ascii?Q?d5CGojo5bVlNDYR39iusEWUd7T18JfU4UoWDmqvKw9astFDt7GxuiNAHMcX0?=
 =?us-ascii?Q?yyVIMk2hKHQYRROUDYWJXFKFYeCK5lmmjxBt04cM+t3AhLH2tTJ8jpap65/Y?=
 =?us-ascii?Q?8A/ijV/T2IbajTQmqxd38MsAkL8lLy0sB7zTUHpkXikXfHmE6OhpRLxglctK?=
 =?us-ascii?Q?/aViM41m44269sQxLJudPSQx/yzA7+nPRic11ihTWQ2xQYSelMI6oY07tQjC?=
 =?us-ascii?Q?hVnAD1Qaet3As9B+ynly4BGIECf/ZcPbSzc+Oocke/rsdoUZIRCx9A5o9NPg?=
 =?us-ascii?Q?7g0qYPFGa112F08uWlKr8jI4vxPqF3DcPOVvoayIcVqK9XZoqxF6lkGygG5v?=
 =?us-ascii?Q?YJDU5PuEe/Bm7FrQH0EsVCPz9aYpSofnlInNuhSpB7hk8gf+GLuZQe8ZAkA7?=
 =?us-ascii?Q?lLd1unSvvMeP5ssLoUJow6t03g2CrTllNyQmec0sH/jgAMA2cCCp8r8xmKu0?=
 =?us-ascii?Q?Gg+Dly15s3nODQmsmpsV0f+GypiBJPNVpzMiB5Rnrtqy507XVwyx/YdLVrRR?=
 =?us-ascii?Q?7DSFyDH/Gxm1k2D/VzvvIJvHY1LnFzctkrr2UgpR99aD9dEGB6hzTFgdaIQZ?=
 =?us-ascii?Q?nCCmPvdeJum19k9qpYis5Ika8c3StyujyDXHLcdbNXrwFYeKpNzciRcoJEUu?=
 =?us-ascii?Q?eP4u0Tzg0LWQzv92vuaJ8NPyfWg9Lh2zkr0bUa/54WZ0wuoaMHYXuXRE9cLO?=
 =?us-ascii?Q?raOcqCp92WeqiaDleK2EmL+MyhJdBYKk0193myzV8+3E9alBggQTIB9lKXUE?=
 =?us-ascii?Q?7KMBpTg7b29BlR2LscuWM6WzgIjSyYfNWQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98283964-c91e-431c-9fb9-08d8c35e268c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 07:27:21.2324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /2IrgMXm3pcAMmUWJ3iRNrQ3DcnbFiB1YBVtQXVgzQ2J9zyuh/I6YXHgjhJr8lFi69x2/0yQ3ft/PTFeop9ktQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB4852
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l51iG-00DaIR-Uh
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 02/34] block: introduce and use
 bio_new
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
Cc: "shaggy@kernel.org" <shaggy@kernel.org>,
 "sergey.senozhatsky.work@gmail.com" <sergey.senozhatsky.work@gmail.com>,
 "snitzer@redhat.com" <snitzer@redhat.com>, "tiwai@suse.de" <tiwai@suse.de>,
 "djwong@kernel.org" <djwong@kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "joseph.qi@linux.alibaba.com" <joseph.qi@linux.alibaba.com>,
 "pavel@ucw.cz" <pavel@ucw.cz>,
 "alex.shi@linux.alibaba.com" <alex.shi@linux.alibaba.com>,
 "hch@lst.de" <hch@lst.de>, "agk@redhat.com" <agk@redhat.com>,
 Naohiro Aota <Naohiro.Aota@wdc.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "mark@fasheh.com" <mark@fasheh.com>, "osandov@fb.com" <osandov@fb.com>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "ngupta@vflare.org" <ngupta@vflare.org>,
 "len.brown@intel.com" <len.brown@intel.com>,
 "konrad.wilk@oracle.com" <konrad.wilk@oracle.com>,
 "hare@suse.de" <hare@suse.de>, "ming.lei@redhat.com" <ming.lei@redhat.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "jefflexu@linux.alibaba.com" <jefflexu@linux.alibaba.com>,
 "jaegeuk@kernel.org" <jaegeuk@kernel.org>,
 "konishi.ryusuke@gmail.com" <konishi.ryusuke@gmail.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>, "axboe@kernel.dk" <axboe@kernel.dk>,
 "jth@kernel.org" <jth@kernel.org>, "tytso@mit.edu" <tytso@mit.edu>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "philipp.reisner@linbit.com" <philipp.reisner@linbit.com>,
 "minchan@kernel.org" <minchan@kernel.org>, "tj@kernel.org" <tj@kernel.org>,
 "lars.ellenberg@linbit.com" <lars.ellenberg@linbit.com>,
 "roger.pau@citrix.com" <roger.pau@citrix.com>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>,
 "jlbec@evilplan.org" <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2021/01/28 16:21, Damien Le Moal wrote:
> On 2021/01/28 16:12, Chaitanya Kulkarni wrote:
>> Introduce bio_new() helper and use it in blk-lib.c to allocate and
>> initialize various non-optional or semi-optional members of the bio
>> along with bio allocation done with bio_alloc(). Here we also calmp the
>> max_bvecs for bio with BIO_MAX_PAGES before we pass to bio_alloc().
>>
>> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>> ---
>>  block/blk-lib.c     |  6 +-----
>>  include/linux/bio.h | 25 +++++++++++++++++++++++++
>>  2 files changed, 26 insertions(+), 5 deletions(-)
>>
>> diff --git a/block/blk-lib.c b/block/blk-lib.c
>> index fb486a0bdb58..ec29415f00dd 100644
>> --- a/block/blk-lib.c
>> +++ b/block/blk-lib.c
>> @@ -14,17 +14,13 @@ struct bio *blk_next_bio(struct bio *bio, struct block_device *bdev,
>>  			sector_t sect, unsigned op, unsigned opf,
>>  			unsigned int nr_pages, gfp_t gfp)
>>  {
>> -	struct bio *new = bio_alloc(gfp, nr_pages);
>> +	struct bio *new = bio_new(bdev, sect, op, opf, gfp, nr_pages);
>>  
>>  	if (bio) {
>>  		bio_chain(bio, new);
>>  		submit_bio(bio);
>>  	}
>>  
>> -	new->bi_iter.bi_sector = sect;
>> -	bio_set_dev(new, bdev);
>> -	bio_set_op_attrs(new, op, opf);
>> -
>>  	return new;
>>  }
>>  
>> diff --git a/include/linux/bio.h b/include/linux/bio.h
>> index c74857cf1252..2a09ba100546 100644
>> --- a/include/linux/bio.h
>> +++ b/include/linux/bio.h
>> @@ -826,5 +826,30 @@ static inline void bio_set_polled(struct bio *bio, struct kiocb *kiocb)
>>  	if (!is_sync_kiocb(kiocb))
>>  		bio->bi_opf |= REQ_NOWAIT;
>>  }
>> +/**
>> + * bio_new -	allcate and initialize new bio
>> + * @bdev:	blockdev to issue discard for
>> + * @sector:	start sector
>> + * @op:		REQ_OP_XXX from enum req_opf
>> + * @op_flags:	REQ_XXX from enum req_flag_bits
>> + * @max_bvecs:	maximum bvec to be allocated for this bio
>> + * @gfp_mask:	memory allocation flags (for bio_alloc)
>> + *
>> + * Description:
>> + *    Allocates, initializes common members, and returns a new bio.
>> + */
>> +static inline struct bio *bio_new(struct block_device *bdev, sector_t sector,
>> +				  unsigned int op, unsigned int op_flags,
>> +				  unsigned int max_bvecs, gfp_t gfp_mask)
>> +{
>> +	unsigned nr_bvec = clamp_t(unsigned int, max_bvecs, 0, BIO_MAX_PAGES);
>> +	struct bio *bio = bio_alloc(gfp_mask, nr_bvec);
> 
> I think that depending on the gfp_mask passed, bio can be NULL. So this should
> be checked.
> 
>> +
>> +	bio_set_dev(bio, bdev);
>> +	bio->bi_iter.bi_sector = sector;
>> +	bio_set_op_attrs(bio, op, op_flags);
> 
> This function is obsolete. Open code this.

And that also mean that you could remove one argument to bio_new(): combine op
and op_flags into "unsigned int opf"

> 
>> +
>> +	return bio;
>> +}
>>  
>>  #endif /* __LINUX_BIO_H */
>>
> 
> 


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
