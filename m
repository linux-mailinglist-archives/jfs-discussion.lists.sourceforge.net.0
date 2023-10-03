Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BA77B66C5
	for <lists+jfs-discussion@lfdr.de>; Tue,  3 Oct 2023 12:51:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnczL-0005oo-RJ;
	Tue, 03 Oct 2023 10:50:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <juntong.deng@outlook.com>) id 1qnczK-0005og-Kn
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 10:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NanwnutImd43uS7IFHhtCYOE9jg6KTM2O6za3hdRxtU=; b=DF0mWHQPALV36UedeOa4Rku+Rv
 T6wvyCyOT09NQ2h3B+diAFkg8N+RDDtZETspy3ihXj0HV4uhhiROVFYCIBwqDRqYLdP5IiWlAgDEd
 XK/9ufTvBEiC86rJFj9OkVitHKapKts+iW65+XMtn+bFL7rJ/9rln3cldypdYJNqG4nY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NanwnutImd43uS7IFHhtCYOE9jg6KTM2O6za3hdRxtU=; b=S
 cCkuCpcNm9xk2zKiQnFWy8cJ9t2ksG2EW7oniMon6n3dAJzuSHPzzpaGwKfYobEAZQZhSW7rUV/As
 CjebDml+v1KMBdtAT6G7KvhY5u6LsvHOG1vlkZxU6Uj0KTpxOMBikgHUzOpJYv/F8Kt6EXdGM5geT
 nTc4X/MT/bKT4deg=;
Received: from mail-db8eur05olkn2083.outbound.protection.outlook.com
 ([40.92.89.83] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnczH-00HItW-A4 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 10:50:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AlM697V3EqpapOV/S7Q2bPiDiZ/LhAF5SOq/W0oXoTPPw/U88hhXhSQDP2+js8DS5B/0RUYZDbQ7dXN0UVNCshCi4PWDlF8tVWoGDsKlBrreNlOSrPgnYOFhatwxJw6LtR02b9Ank5fspUn8sjAs0JYusZnb+Oe93f1r09GALIUK5TcGbq7hOArsa5p83jysr+HKifHyTPEbCFMd/rPQ82OY4TxcERGMPD/tQ9d8Q+4Qx42ibxgsPcCT9EW+Rpyy36MABRLsvk7D856odxWY3PG/JKCLwepB7SYMa5GexoGWxIMjvv7+aqU/w99fICVE1zcVS6C4Mr2FgBjfbGvB2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NanwnutImd43uS7IFHhtCYOE9jg6KTM2O6za3hdRxtU=;
 b=hrRvYrcLPB8qthHuI7x2D2jEzeD6oiPLe+PsvSCcSK6DKYPFCvHWRMls+Khn64yTccCcmcjbg19VXZIb1O5VM6eUbyxy0leYS5ZU17QMbQjXDwoMV0RoWsc5bAuO1a3+MJAvEZImRUOiUccFf1vmx1o9/YwB8Z+fYhm8+K+kEyuSzwPC5yZmqRQKsA464wVoMX5TvFfdiOMzh2frOKHVNg8UQzAVUrvgodIRaTMy+EmixP2SpDkDxucrFffIJEbYIIjJnD/G2kBzIv83xsUySX4xviNt6LJOdAGtZSZmEYAImSn6gi8hzKbucwKDPzz8mLHbABuxpneljLFxOmG5dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NanwnutImd43uS7IFHhtCYOE9jg6KTM2O6za3hdRxtU=;
 b=WPTi8G4zna0t/9qT5EjAbsCjY8/g0QRjXDwhGTeQHF93cQT5M44gfAryA/knn7VQr0a8OuC3rT3HPVtJBc1vh9LxHBovrhjN+kzyNMXcdqFwBbi43Ne7DVrMckoGBivqHSioBvsKxWlZ0NsESoWVSDJ5kBLbvui3BpKaPYt+QNJz2qclDrs1qWd4lD0S9OztzXNGC+6eM1E5sZvSlLt+CuBSOL+WbvCnNE5Y033K9EPzFgIROj/3Bm4oLrJjyzxYIFJa5jq0HoFXyS/zXyBemJWi40M9tFDDHVieE0gljl6T7tgVw4hPOCUfhGIW4d2OAPjm1jcOiPkzsQPXG7jOyA==
Received: from VI1P193MB0752.EURP193.PROD.OUTLOOK.COM (2603:10a6:800:32::19)
 by GV1P193MB2104.EURP193.PROD.OUTLOOK.COM (2603:10a6:150:2d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Tue, 3 Oct
 2023 10:50:38 +0000
Received: from VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 ([fe80::3164:ae5c:78f7:23ad]) by VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 ([fe80::3164:ae5c:78f7:23ad%4]) with mapi id 15.20.6838.029; Tue, 3 Oct 2023
 10:50:38 +0000
To: shaggy@kernel.org,
	cuigaosheng1@huawei.com
Date: Tue,  3 Oct 2023 18:49:22 +0800
Message-ID: <VI1P193MB0752266E3E55B2D918F8E43799C4A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.39.2
X-TMN: [Kc8E43y4H7AukeO4JMuLnMRBPzWTvEj5]
X-ClientProxiedBy: AM0PR04CA0045.eurprd04.prod.outlook.com
 (2603:10a6:208:1::22) To VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:32::19)
X-Microsoft-Original-Message-ID: <20231003104922.132596-1-juntong.deng@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1P193MB0752:EE_|GV1P193MB2104:EE_
X-MS-Office365-Filtering-Correlation-Id: 20d9c5ef-8418-4c5f-185c-08dbc3fe9427
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q9R4EBrHyDwH4SaNwAxOJyo01ztZetS0oClsMAk9EQ8shoXt++r9CM1Kvf1EZkLGq3V91BGFh3Sa6evJ0VvDllW6VlJfgIh9eKNEQoR4AxD75O+Kt/fGoXQG7SkQe347qH7WAwVUzScoduwXh0wW3qTLzHcmvWy7csoznfxDf3EzSozcddE/LR4xqtee0sWmdCEPm6387tSqETkTWv34cxkF+3/sS0EX9b9x68mBc9WR4bv9XolGywOI5YWjcFtLr1FW9Dl9XtL8PkW8+Hx6z5Fs+issaqSpjUdVCBZt6gU/5Z5ZDAZPzVej7EZw8nQZ9lm7ti0ZxhMFIWbeLDYgd8Uty5xpnhYRnL0QZdR8GseOXSBceggCiHq/XtcrOayPVU1ar7llX3bgE1Z1/NPYQN6aoJWNwS0QV5pIzRxd0hOm+56rpTqWaPLjpv0qR4VPGlgaXPUP5bIOrFMJicKDI7Kl1hJ3SNX7CSPISAtsZ883vXbJo7yqJY6LkGkulEasVZV2jTUAaaY9qjjkBNLHrHeK4amtZWFio3KXwbeJ/SwqPoS7FsOeQ6SfuWZcJVQtgdfG4Tjj9kqI43+A7daUAEwuxZZRgz0DV9FrIx5PkE44ftYVmCK+eAEdhHFjQVDwyt9VQ6MPsyEVjJcPS11D24pSZK7GC5kaZaavofoLqyXM6OqUXaYyJDFI8Nd6oOilAkKE74bnZoVUNBe5Yh4TB6OYJAZcl4cVpXcXvCcJrMxhUZFt07Kc2ndMigUKfzuhYSNBhZxC9ZMyklueMlWIk+kINdCcAooRfz2YZEJYbFnbBn9XVDqi+G0vqM51ko2k6dWQJ6YwGq9Pj0i22cpl7L0hIEZVoOWWhb0sL2GGLczx5Vmxnn20HZPokputdkrvqn/b+sdMCY9GELNOg0lNfevk+wajPhYfP1I7SP+Em3E=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8J7VNlbwIdESNl1dKMkQrFWS+AGbjLrayYeauAV+If0+cCXSrrV3ugdADwIt?=
 =?us-ascii?Q?sQyaEwZ92GO45XTjP0At02fqIRrN7Q/dV19M88p9SYPsYJpkrkPPEktAQdeu?=
 =?us-ascii?Q?CZc0JzfjkVSzoNi/swPi34GRYAotmPeYxat8nClxIRXegvJPJHKM7YFAwcuP?=
 =?us-ascii?Q?OSqteO/Gt5R6f/KVyEoFrg7kk3TMnvJq1Hw1wRv7KVMt1hCeWaa9ykVRxlYB?=
 =?us-ascii?Q?KFkZPCgaTxHGWkooB4yAre9Z7zcbBdXqbu1WEYjquYfq1GAINL7Wn0kNLuJH?=
 =?us-ascii?Q?ksz4S7ntam3p9h+h8llTGMuvSZO4BO2dE6pBar0QiyUsgseKLuuJ33k8GYJA?=
 =?us-ascii?Q?nz21+yX/rDWdNwXs7AC5nRDVFhrBXx1SFs5On2hewQzK/GFd/gn0RdwWKRAo?=
 =?us-ascii?Q?GVQ8XCdsq4kaDJuQJCc+qJUpAqlYlr+3pXi7QkQxsns7+M0dYnWW/MsZJ+P3?=
 =?us-ascii?Q?wKazbMVFeD7dDyhfBgzGsZQzzGGhtdIEqaXKyXGikZgyvvv6mm8dHhZugWWu?=
 =?us-ascii?Q?IzlpOOq6veyd0IvCrhsbe3pxN5L56QVYKmwTdryQti15mGKa/t5j+A0I1yvU?=
 =?us-ascii?Q?1L+ZLYkexE9uqurh1Y5SdT5lRuytZNoaZCQlsfgiaqFn6KO2XAqDcLoWL+ie?=
 =?us-ascii?Q?1IRsXKslyEvODLlEVIqGyS6AI9H8YG/WM+MKK036R33OKLPrgurjw4QkQwJH?=
 =?us-ascii?Q?vp+U89fQzyEVZY9MBHA9XZhb0nLrmyNVfe3F7TknBiTlX6mQZREAkRQmcvCt?=
 =?us-ascii?Q?3/7+QV/7YozPaNqSSTPs2xAJ2nxMXqeeKipgwcCS3yYkFd67PpkPYHGAeHw1?=
 =?us-ascii?Q?VUbCb/f6rARx0w052PsZ0g5veIwV2j1xMt3NPY6H55IwDBovVuojWJzzx54U?=
 =?us-ascii?Q?2V9FukJ5OwYd73qwqbIFuJ2rGuK3J4kRJKVui4k7VErD6VxhBP4sgUl7mqo0?=
 =?us-ascii?Q?WoT51rfHqZHYbud6++fWpsUpA+VO9IfSr98VR9whM409YHhNSyRzaBKIzXxn?=
 =?us-ascii?Q?6h8ef6LJxI4Pb8DxFhfzQplniTQT2jBJ+1a83lrV+qgTlEoLav6aXYa86aHE?=
 =?us-ascii?Q?k1PVWX8LY+ubRiAuuVrpVot6+3u4gtIfVdia3nDo1URUh8b/uJVEMUNBSXYU?=
 =?us-ascii?Q?vyOBqKecgu0i1N82/OTH1GIiCn64k1HOlucEtBAyqoJbZSzL3mzwz0FPYvSI?=
 =?us-ascii?Q?khsrfUxE9i1dJGwQ++PZE/3wCWQQ4BEIWOb+Mc8TRkyXYNWNbhwsGc/5+p8?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20d9c5ef-8418-4c5f-185c-08dbc3fe9427
X-MS-Exchange-CrossTenant-AuthSource: VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 10:50:38.0282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P193MB2104
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There is currently no out-of-bounds check for the index in
 a binary search, which may cause errors. The following is related bug reported
 by Syzbot: UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:360:4 index
 18 is out of range for type 'xad_t [18]' 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.89.83 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.89.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [juntong.deng[at]outlook.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qnczH-00HItW-A4
Subject: [Jfs-discussion] [PATCH] fs/jfs: Add checking for out-of-bounds
 index in binary search in xtSearch
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
From: Juntong Deng via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Juntong Deng <juntong.deng@outlook.com>
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

There is currently no out-of-bounds check for the index in a binary
search, which may cause errors.

The following is related bug reported by Syzbot:

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:360:4
index 18 is out of range for type 'xad_t [18]'

Checking if the index exceeds the size of the xad array can solve
this bug.

Reported-by: syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=76a072c2f8a60280bd70
Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
---
 fs/jfs/jfs_xtree.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 2d304cee884c..6b55bb1e4089 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -356,6 +356,8 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
 		 */
 		for (base = XTENTRYSTART; lim; lim >>= 1) {
 			index = base + (lim >> 1);
+			if (index >= XTROOTMAXSLOT)
+				break;
 
 			XT_CMP(cmp, xoff, &p->xad[index], t64);
 			if (cmp == 0) {
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
