Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA5A307610
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Oq-0000Ou-Po; Thu, 28 Jan 2021 12:27:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=6551138a8=Damien.LeMoal@wdc.com>)
 id 1l51cr-0007dU-Nd
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rZQ79VfW37oEjUPhbUXgVDt26btMTlh35TXahcKTIxw=; b=Rw49ZfZ0EkQ+w+Q04c3UJmmpTD
 9Shw3kUmkZLwXQAEE2wV1KrH4oRCiOGHEAXdKZqJ795pZL3WdCEDauSN109UtOaR32Ch5WY/1x/BN
 Kw+QS0WGgsHc0aMCo0sX2f2Ywq3fUrukcR/9Oiw5hhWzOMh5KFlolxUtAirkAMWrMkXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:Message-ID
 :Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rZQ79VfW37oEjUPhbUXgVDt26btMTlh35TXahcKTIxw=; b=G
 mvX5C9CFUqVRJXVWhBCsUdf1h7iltNoTxWZVPj+QD2+2qjmgR9EqUaqbGqU3MnZCiCifIzGpmF267
 jkirfRH8Qf6OkEJn2GJrGgzZnB/jlOYh43ZoBc5wZdwVDzrsraT1OBJjeAfEa+8wfadQrGzYr2tFJ
 bxcPqnL5ft6iyX6A=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51co-00GJTH-Bk
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818514; x=1643354514;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=9Hp1mmxIhP12exuHZUs6f4NIF64JekIbMU2y2gjowsY=;
 b=qf4TgrchrSW7Kf0EtGzQ4OC/LzjV6r4bCndK2viXvXcA14aCNuMRdQ03
 Kk4IVvA21cCIkgI7O3BxmSFsMlZ7IKNk0Pscpi5FtCVu2myBPiKxzWNyg
 +oG2EzTlBjMVL7lQSieW9dKTUAS3Qxjv3Dyg3r+47oE95TxGfPyIT/i/J
 6105Ga3cCmY/tiPPo3amPnXdNQIDffhIb/eDdAlwhNDTNC9FYb2+biWzU
 QGNqcsQbEOhX02CHKrwXQucr/OocnDntQv93Qvy3eC5R69ZrGp6s+eLhL
 jySjA3n40jEkZYE1wodRDREkzToJVWJweH//3qG3lCFOh4vsL5lv+MVb2 Q==;
IronPort-SDR: QEF+8TGngCqTGDYAfES0k7Iq8Lj8Z1j23hWw3M3LnFhL6QZih1XM5LZxSRsfTJXgpv5E1SblKM
 Bsu7V10JhP5TnAvBjYRtRxEqUPv2HJm33T5x70FdtpKeTam8Lku0k8SIl7hluBD5ij/As5Vw9s
 nKuDQlS8VQ8KHSrpBH6erXI92dE58YUlccMAgxKbmkG5Krj4uGkirZn5TulPgUw8Qky4rfx2PQ
 aWCuLtWfwtNgNSyX+xM2wVuWWfLlJn8a8AVx4NTLiKKss4UTZKw7CG5gC5hQr1D2fM05/SrZuv
 r5A=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517951"
Received: from mail-bn8nam11lp2168.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.168])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:21:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGvTFC0yVocA1hFeGOYvjQ+f/YSuD75Q/8tkuiyNxQkF23UxvMywneYGAln1lw8Xhs3qjQvWItdgd+CqdoCZOLpmuH4ptIfJkiKypbJOF8fjo6xly5kpeejMCcmb9TV+VYlceFyaNhO46nha82bqmy7/luCs/lrsoL/cArREno60UHuMizWsEmdy4Bxfq7LnJpERyi07H9ww2vM5jeFFQj0tMeAigkwO1DsWafJt0Fq839vVOSa6z1KrJTZS1iJDKKe3rPYdaA3pbji5icSyWi0MHi2Av8SuAEzbzvSxch0j+tb0kMkBwUJVhvH8tc9lyxzjLZbBWdlEFDj4KAQoSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rZQ79VfW37oEjUPhbUXgVDt26btMTlh35TXahcKTIxw=;
 b=ewcyy+f5pm0Gvfuq66QLUzmljFfxV1XcSt+FlXT110bCllm3RqvEk+y6rdwmDmRsLuIdGvXsMnFhphdnjfxABcalxu6RrTkW7MnOnWh9EF/8L3nffa7eXXB95G3BRw9RE5QltDcCZ1vcJ9c2HoEAI4HaooQEfE5prpKhyIBJc+z2sT8ynyDdElAtc2TQJJC8yAuAd8n0jS7Wc+YTaNR4fwo2ziu1wBo7rB+4xYRJnj/90sIzgR+/oyqJ8hNKi14vk4mwaZnVXoctiOqF4V0CjyJ2prws95UPtxPw9I8GHkzSJXn0TdiFJJTWo1ZfduzHSE90W7Sesm7qKNrg2W5Wag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rZQ79VfW37oEjUPhbUXgVDt26btMTlh35TXahcKTIxw=;
 b=hrFaGwglVnPWcvrZYYTSLmKDzWe4Ql8MYzMhE/ZNdzUUxZaQHpa0WUmIc6fKPln6CA7rT0gIe3GHUdejLdgow6Yj1ChwX6iG2QGP9vTtBq0U3ZLqwlykpawLR4D2R+Htay7VfWrlfDvS5SjOdFc1MzrgeW8k4qfHTZmC0UwhJ90=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB6352.namprd04.prod.outlook.com (2603:10b6:208:1ab::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17; Thu, 28 Jan
 2021 07:21:42 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3784.017; Thu, 28 Jan 2021
 07:21:42 +0000
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
Date: Thu, 28 Jan 2021 07:21:42 +0000
Message-ID: <BL0PR04MB6514C554B4AC96866BC1B16FE7BA9@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-3-chaitanya.kulkarni@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: wdc.com; dkim=none (message not signed)
 header.d=none;wdc.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:47a:7b5a:7dfa:1b1e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eb871fa1-3f12-44a2-a077-08d8c35d5ca2
x-ms-traffictypediagnostic: MN2PR04MB6352:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6352DBDFAB902914B9C585EEE7BA9@MN2PR04MB6352.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M09uEpCy2sHYnN+orzp8d3r4sKwPwnS+kovdPTr+X2vGltHHUOiuwt35YiL4pwUTQFJb9lI/cctrcvMtSEsYDG11B6WuQeQ5LhCFOm8xnCx/j7IUhZfAc+BSTsEsxty8tkWMahat2Us5tDlHI9XpWnzEpUBuIiTIis6CFGcSzDbZQv+YTkDwb0pb6zKYryvjjNyuaDbfN6d7lDvAFgMe/S84pCGpf8NIYlMhpfcnANa9rtVk1fEfaQ11KXM8VaoFYslEaC8FtVVKMdMiSlVm1G6wR6EIe9QpF54CPrt28byH/cHhwj053vEXp8RFF07hlGeGEHLWbouozYb93iT1K6F5OPFCWV/ewR8z5Kn/uykKQypwrh09HC+m3KNohPQSss4YboxRFNRKIUOjUD9KDfOD2dh3DMVG9Wehar1cknnRs6eoICQxgNf9XdAqhQxkvWGbAdwofxGFVG96zdq+KiRY7l6iGEQ9lizBBRpl1Cl5YsTWF3Ebz7haDS4uRI4CUlc0EEMGTEpRabqGyepXSSCQauC0I01aeQXMPzWGYL5JlkA/UoQC4yu0QYoNvMSIgo+cZP34MN7KkNUL2U0tyA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR04MB6514.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(7366002)(7406005)(64756008)(66556008)(66476007)(66946007)(5660300002)(7416002)(316002)(6506007)(186003)(66446008)(76116006)(110136005)(83380400001)(53546011)(7696005)(91956017)(54906003)(52536014)(9686003)(86362001)(55016002)(71200400001)(2906002)(478600001)(33656002)(4326008)(921005)(8676002)(8936002)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ilRnIHb2W+3T2C2caNzRqpDzJ0Ea0Xivh3HFrmVjFepbjG/4fJPeoU7kjRlT?=
 =?us-ascii?Q?4cfEdoxq1pKIhTR8YC8VWpTJjQgCARNQwY+MfHwWAHyq7XzZrTJ+W5zBB4Nr?=
 =?us-ascii?Q?gbqboym+VApr7h2E6XSe0FmXOz+omKq6DFZVboi3NwQAYnWCDCcygMa0n5ZC?=
 =?us-ascii?Q?i+orw+uEOMmnA8L/tMdOkJYMmLEyVDh+G9pnjfMmYkt0blpGnFBWHNDym39U?=
 =?us-ascii?Q?dIrdmaQbh6883La06gFXbWGdjQgjXOXLEnZ3UgQdxTZ3JyxZKLQ71jVVbmhr?=
 =?us-ascii?Q?0p2pkHIwQoMPz5HKOnR6V80LYTmpcP7VgrO091zZ/4rct/lsBVwykJza+GD5?=
 =?us-ascii?Q?IHbQu1IRlEAKFeXGAtTjEb578LsnTaSvJCJYoQS2vP+axrzwvVVw8mOt+5k0?=
 =?us-ascii?Q?KL2XZSeojWALtQsww9PwXxXKo/u++tt+9E5GT2jM5O4BtWCGYIeHt1uhRADL?=
 =?us-ascii?Q?gJ0hzvvlILRjU/TqEgmmCXBE50OH3C99QT7ii97n4+QFDEjw2bGLKb5lrf6H?=
 =?us-ascii?Q?IHyTRN7gvNFJTUay5wTAkpCCUyYWXZIjEb2UFpB6lV531wPPtNPC4ZXwwrWy?=
 =?us-ascii?Q?UUwx0RViz7R7iLMJP7kZUpan/n9xAtlMTSdfuUl+LJK65X0ynOT4EUBmjZh1?=
 =?us-ascii?Q?7f2FeVb24U1zoxD5JnIuvykDuOYgmJlnvf2GvI4IfNA9RybrTxAbVd7Ev1uE?=
 =?us-ascii?Q?iYKXh1HRo38Gzl+/krexExV4e0GgKuB8ROJUM1mrrLxC0PLvUJVZZWIIKY/T?=
 =?us-ascii?Q?EtWttQJe8PPeFmAWMbSTnlaoUKPvNyDC93hjlfGSDIjTTLIFZ4iZg/v8/mfl?=
 =?us-ascii?Q?vPF743c6M4QtXnUUQcdd8jMU2Xffoi6iuon4E7e6TeLOR0e7niaTBUf3bgPv?=
 =?us-ascii?Q?W2AR7teeocTc9v/wp1bkGDqoO4PDXnCni+0tsViRKD+BHAkawcDVDIjbtPby?=
 =?us-ascii?Q?TmOiQAj1HhTITExgPZ3Am1ML0xT8XHeZOcxCj8XLjunGXY367EkeICLa7oc4?=
 =?us-ascii?Q?Hx+SgjQnG25wJn9UaUXUtvbZ+SxW0OdUJGfxAAPJaG/AhMr+s6nN+ezf5jC+?=
 =?us-ascii?Q?TnbTVjltXe3BweymPazgpv3fxkvT/+e3/ihgd/xwUglKOJv1POJWqDO9pOjp?=
 =?us-ascii?Q?vVmRwBKsvdP+eIgHWtuWTOV2jEyOlzJg4w=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb871fa1-3f12-44a2-a077-08d8c35d5ca2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 07:21:42.3813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HOBO+8eTXWVmpt6dgIHyBBjDN753lOgBMYt0QXNGr1qUdGHKogIJ1c3Ww3ZO4DM7PeQNbxVnSGwrctGN0hiVFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6352
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l51co-00GJTH-Bk
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

On 2021/01/28 16:12, Chaitanya Kulkarni wrote:
> Introduce bio_new() helper and use it in blk-lib.c to allocate and
> initialize various non-optional or semi-optional members of the bio
> along with bio allocation done with bio_alloc(). Here we also calmp the
> max_bvecs for bio with BIO_MAX_PAGES before we pass to bio_alloc().
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>  block/blk-lib.c     |  6 +-----
>  include/linux/bio.h | 25 +++++++++++++++++++++++++
>  2 files changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/block/blk-lib.c b/block/blk-lib.c
> index fb486a0bdb58..ec29415f00dd 100644
> --- a/block/blk-lib.c
> +++ b/block/blk-lib.c
> @@ -14,17 +14,13 @@ struct bio *blk_next_bio(struct bio *bio, struct block_device *bdev,
>  			sector_t sect, unsigned op, unsigned opf,
>  			unsigned int nr_pages, gfp_t gfp)
>  {
> -	struct bio *new = bio_alloc(gfp, nr_pages);
> +	struct bio *new = bio_new(bdev, sect, op, opf, gfp, nr_pages);
>  
>  	if (bio) {
>  		bio_chain(bio, new);
>  		submit_bio(bio);
>  	}
>  
> -	new->bi_iter.bi_sector = sect;
> -	bio_set_dev(new, bdev);
> -	bio_set_op_attrs(new, op, opf);
> -
>  	return new;
>  }
>  
> diff --git a/include/linux/bio.h b/include/linux/bio.h
> index c74857cf1252..2a09ba100546 100644
> --- a/include/linux/bio.h
> +++ b/include/linux/bio.h
> @@ -826,5 +826,30 @@ static inline void bio_set_polled(struct bio *bio, struct kiocb *kiocb)
>  	if (!is_sync_kiocb(kiocb))
>  		bio->bi_opf |= REQ_NOWAIT;
>  }
> +/**
> + * bio_new -	allcate and initialize new bio
> + * @bdev:	blockdev to issue discard for
> + * @sector:	start sector
> + * @op:		REQ_OP_XXX from enum req_opf
> + * @op_flags:	REQ_XXX from enum req_flag_bits
> + * @max_bvecs:	maximum bvec to be allocated for this bio
> + * @gfp_mask:	memory allocation flags (for bio_alloc)
> + *
> + * Description:
> + *    Allocates, initializes common members, and returns a new bio.
> + */
> +static inline struct bio *bio_new(struct block_device *bdev, sector_t sector,
> +				  unsigned int op, unsigned int op_flags,
> +				  unsigned int max_bvecs, gfp_t gfp_mask)
> +{
> +	unsigned nr_bvec = clamp_t(unsigned int, max_bvecs, 0, BIO_MAX_PAGES);
> +	struct bio *bio = bio_alloc(gfp_mask, nr_bvec);

I think that depending on the gfp_mask passed, bio can be NULL. So this should
be checked.

> +
> +	bio_set_dev(bio, bdev);
> +	bio->bi_iter.bi_sector = sector;
> +	bio_set_op_attrs(bio, op, op_flags);

This function is obsolete. Open code this.

> +
> +	return bio;
> +}
>  
>  #endif /* __LINUX_BIO_H */
> 


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
