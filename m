Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 493A873B8FC
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jun 2023 15:45:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qCh5s-0007dz-0q;
	Fri, 23 Jun 2023 13:44:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mirimmad@outlook.com>) id 1qCh5q-0007ds-LH
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmLD3qemE799871bKBC2cg6J4on5Mkylw8xzJF5ylbk=; b=jpopWSFll4rhoZxPGblt04knGJ
 JgKbSVoZ/s6iR5Hxk0gd7tUnORnr+HVuvHTxSNHhyqSdyhYylhccU7PsRw74xltXqDggAPjGRgXUj
 Bn66bkRJtMcVG7HWnEYEJHQcwp1SWROhNmKFPphuvibTNWMaREgqkYmpZB4RLfsrAzIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmLD3qemE799871bKBC2cg6J4on5Mkylw8xzJF5ylbk=; b=KTWb7bxdH1/YsuEa+NPttuSb90
 p7+HPHjGvA5CauPjyuc0i5qLJvA4ot9t2u/3BYLTbkGxEph16+xuk/50OvETDuU+eiRv9D/YkdnAA
 OQOBE+Ot8HHrPqGqwKGQt0oJ8NWGWL8ptmzawtsyCna+Hd/WNz1qy1QXIMXvKDGRRZU0=;
Received: from mail-dm6nam12olkn2047.outbound.protection.outlook.com
 ([40.92.22.47] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCh5l-00CRuc-I2 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:44:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DT1kN/F+78N7lHPGo/Y309ZabeAqzuPtyZgq+oXPdxx5ihdo9y3JZJYfefMg+Jb4/tQv2mgYnkC8bATnHxVRQEWgatgfXOMX3e0WbhwIxgk4DEYQ6dzKKYXLOSUekw57gfBKbljiwdoOw7jCu5QMKB57nuIgtlqEAxWJq3X32lmIEQuEJhJ3hXDr5zCFq4xjLr3tKG5AGYmBRu2L7fxi5GApvz89xv7+Qty7ppdQWPlInO6sKCU3EVyr++icU4gOZtG5kl2dKccF/cp1R/1/9BiUhQeK4+vqhwkgIKnhCt6b7ZyZR63dKKUYFF7LXlu0fOkOXOUOR8Ag8YyHsFvlPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bmLD3qemE799871bKBC2cg6J4on5Mkylw8xzJF5ylbk=;
 b=Xm4e6yOCsih+ve8zJi2JRoGO4BQS/+BgXN5I5LkVfOJdxeedP3RzrWvlAHKtnPyq9VwG2MDHKxBqqsHrhKf8olMDxOWeaMueUhQGYW42Dwm079m3QLdHkgeOJ2Tb8/HY4K8whHW5D2kn7SZfFFENJ3eYPloNIJVz7814a82wLWKT2FeYnAlxatvXHKOO5yXkaUa4OCYvQlwzZH6GV4GSe5gt04/1pRXXXUW1MTiI3kKXtiDVaPqlmNkz0v9gVDjgydX4tnacDJKD6GIQ3n9HDuMKJ43nKTS+vdry6ltL9HSHSN+X5fmxu6+rKTQEdu8bVWA1bz/0zVgV65ZWkMq7EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bmLD3qemE799871bKBC2cg6J4on5Mkylw8xzJF5ylbk=;
 b=SBPerqHL6swzwdihA2GjbWmvabfD83wpToZ9deXc4C6t//ffyVfQmiZoiKxwrQLfuchPtjsaR8hILd3/W3UUp5B83g4/QyvkVI9ccqF7NnI/DSVGg8KP7WWnUalcOxn4TFXamHcPzd6XVsO/NZfZ0IcxlZ4GY7jcA4bh32UTKzrjNlSZe8Pkc+n5wsMLCZGURgnucrtFmm/nLAWNdIj2eR90noEgePdaKAZvYQCpfqQd3nP5l01ZY/pfScN7Xwg+d8WXGpgDjOFWdeKJqCOY91Y5CG5zLN8QbQtGzpQ6M3Y3QjFGWmufbkSlTTl6l8re0dAF6mSgbSXcMuVa5bvJOw==
Received: from CY5PR12MB6455.namprd12.prod.outlook.com (2603:10b6:930:35::10)
 by DM8PR12MB5397.namprd12.prod.outlook.com (2603:10b6:8:38::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.24; Fri, 23 Jun 2023 13:44:43 +0000
Received: from CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::f849:c65e:3d5b:5d]) by CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::f849:c65e:3d5b:5d%5]) with mapi id 15.20.6521.026; Fri, 23 Jun 2023
 13:44:43 +0000
From: mirimmad@outlook.com
To: 
Date: Fri, 23 Jun 2023 19:14:01 +0530
Message-ID: <CY5PR12MB6455B012A589AE5A29C52146C623A@CY5PR12MB6455.namprd12.prod.outlook.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <CY4PR1801MB1910F3DE3B29710C1D7A9226C68A9@CY4PR1801MB1910.namprd18.prod.outlook.com>
References: <CY4PR1801MB1910F3DE3B29710C1D7A9226C68A9@CY4PR1801MB1910.namprd18.prod.outlook.com>
X-TMN: [y7oeQqWY8SaRc6HiSupo1N5+BOYK/j5m0pzBbVD0gDtyJiiKE52x/WO32/Rc3Y9P]
X-ClientProxiedBy: PN2PR01CA0047.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::22) To CY5PR12MB6455.namprd12.prod.outlook.com
 (2603:10b6:930:35::10)
X-Microsoft-Original-Message-ID: <20230623134401.18360-1-mirimmad@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6455:EE_|DM8PR12MB5397:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a9350ef-c4bf-4e9b-ec2d-08db73efff97
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tvl0YYv7ZHI5P3kXEsz/pr4CzHAJG0xaHD941TywCMfUpTU8HTO8DW+yktfuBPRuZ6o1k6/a0ArE3LRJ6V/povZWj5AZ9snrsbzQTsa5vpLz2ogi22dX4OUobZfbWbYRfJ9OQQLy4BU//BZ6oM4yat+TCo0fJjyo5/ruwd3jFszcIYCM99d23zjlghmQq9Uqa3HVNBow+FrnTBcjmBEc4e2lxgfblGFZE/mVAfT1aefNO+ACV0zeNxUK6EQ2rhXQQXoXgSG3bADJ6vFIYMRBBOcooeDXEqKvR/0FFJzZNhzotGOHbWDX4Z5tZlAapBo0nJMWD9GX5Thd0PDV8f1RZCE6Sq3vY8r57IFUcR7eeN+mdbxjfTpgzm+HgtEDqONkjnG8d3u4gHdNvounVXlc2DpPlBonDBCb4JlagSaljqo8pGXysVZ3YajXnMQlCTD82KNFC5FX7+j5y5uXZwJiOSZWTGRtzJ3Hvd/jJN+CRk4MuFbXPvruqTn1sQaImATtYV5qQMx+0+924oPwJxmZskgp9Pahyf+5rNv3KLy2tgcand4loOSXtHWGoJxUedUsR20Q3AmPT4Bnd+rQd+gnymoLIsn/qMJrs6PkAqgpQBg=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RYkoKrkfY2P4O5YmJtWzooqpiju2gzk0SscwcRGVLFqmVTSMPoU/p+9Y7xoc?=
 =?us-ascii?Q?JNshmSQ0uLswzxR6LAk8EX2wmYkH10/4op78HEMihLquIkyIbrim5Mk+Q9Wg?=
 =?us-ascii?Q?NsewPfDcO0ZrRP8wvq56SWhABljzsAZhzop6Elq1cvW0l2M0wWoK3gik7H3U?=
 =?us-ascii?Q?DlCjPg5UltofP4BJ4GLcg4ybHEopXIsWw2y41cFLzhnCDxm30bWIddeO5c+F?=
 =?us-ascii?Q?UHnknWIYaSlHBTxfQKAXgMVTrP/4hA2SELP72sdJ/uy40qCw4s2fJ+hmW5/c?=
 =?us-ascii?Q?4Uhq/o209R9OTQ40njKuAlqx9zgWWZFheJGIBYrUndodmNEtPuZPBaMmk9dU?=
 =?us-ascii?Q?cmgBDBaEQUMIq64eu4rq4bO+VpyYtRTKpr0Ov3jSjW5QR9XzhW33R/W3y+HR?=
 =?us-ascii?Q?B59l+oJvNhf0mMH75+4CHBVHUG1jRZA1gpcQ1ruSfOLvdZ6oFeFfUlEUJEXO?=
 =?us-ascii?Q?iZCsLu1NVpLDucARrGByDk8/wu9EWVqptxXphlgd0jUC8KApk8Sy10fQxe9m?=
 =?us-ascii?Q?YhMROZ9OTXH1daQoUv0AtnngSmoK4Yno7l3y/weMI5FOss9q72TPNvPCfXzv?=
 =?us-ascii?Q?hK6uk5SFdeFLFOG0ieusrSz/cNWQUgivF3tiJAke+HnuKD1HK4R4DS0o9gZv?=
 =?us-ascii?Q?fNWz2IWtAWKHCAOjF7aMtyVM23hAvsfzt3IRG8FgHFRb+aponBmHZYjUbb+4?=
 =?us-ascii?Q?adstOyZact2U0+RnO4C2fnheWKUNIh4/a0BADSyff3d1oWGyrAIYH9G6aQhF?=
 =?us-ascii?Q?Npjacr1NCRPf2cZfr6DiOsWvcZdVffr1JxGQeljrDrzh1a2aheFRNx8MyTvG?=
 =?us-ascii?Q?hE4bP4RLnDEOXxJ5/bEC3KEih7lf09cFtxrafYaJkde9f3jBRADCGv3gcIuw?=
 =?us-ascii?Q?0i3oYgZ1HRSUITU8rhmz3ioj2ZiUbct7LcvQN3irS5AY9XvKd8JNw/p3I8k1?=
 =?us-ascii?Q?Oz2pqa9oB1pm8DTTgY9IoK+47qYyu4OfhGWseNcJGwnxWAblfk538tsauPIE?=
 =?us-ascii?Q?zdAv97KINICf1Jna7kA0/Gjq9wwCReBs0fs2pAM1eq+G/ZiZsWKBTYMxOMM9?=
 =?us-ascii?Q?tRN+U/xerXL/IMgIn6SzOmnkZTB7CwgNUpn9mCYVRj1nuB6qRhGuVL2x8g6F?=
 =?us-ascii?Q?SjOtvgLO4pv4ucHChyT2Bl0nEYRVz6THpx1OrHFkypqMS2J2OIyiDism4qNj?=
 =?us-ascii?Q?SPyEWoV0LU/I8m7YaxzlvBhCbn6Wqi6Ly3PucoIWj44ifWIWE/FePFUkZC4t?=
 =?us-ascii?Q?V3QHSqBaOm61h1YKvh3U+CxD6qakIc3wEQXNNTk2Yw=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a9350ef-c4bf-4e9b-ec2d-08db73efff97
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6455.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 13:44:43.0813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR12MB5397
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Immad Mir Syzkaller reported an issue where txBegin
 may be called on a superblock in a read-only mounted filesystem which leads
 to NULL pointer deref. This could be solved by checking if the filesystem
 is read [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.47 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mirimmad[at]outlook.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qCh5l-00CRuc-I2
Subject: [Jfs-discussion] [PATCH] FS: JFS: Fix null-ptr-deref Read in txBegin
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Immad Mir <mirimmad17@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Immad Mir <mirimmad17@gmail.com>

 Syzkaller reported an issue where txBegin may be called
 on a superblock in a read-only mounted filesystem which leads
 to NULL pointer deref. This could be solved by checking if
 the filesystem is read-only before calling txBegin, and returning
 with appropiate error code.

Reported-By: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=be7e52c50c5182cc09a09ea6fc456446b2039de3

Signed-off-by: Immad Mir <mirimmad17@gmail.com>
---
 fs/jfs/namei.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index b29d68b5e..12e95431c 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -798,8 +798,13 @@ static int jfs_link(struct dentry *old_dentry,
 	rc = dquot_initialize(dir);
 	if (rc)
 		goto out;
-
-	tid = txBegin(ip->i_sb, 0);
+	if (!isReadOnly(ip)) {
+		tid = txBegin(ip->i_sb, 0);
+	} else {
+		jfs_error(ip->i_sb, "read-only filesystem\n");
+		rc = -EROFS;
+		goto out;
+	}

 	mutex_lock_nested(&JFS_IP(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
 	mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);
--
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
