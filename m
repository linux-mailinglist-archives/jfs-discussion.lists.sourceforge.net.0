Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C08A96840
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 13:57:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7CEp-0006tM-Td;
	Tue, 22 Apr 2025 11:56:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u7CEh-0006t7-8W
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 11:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HXhrQCcoFrDymvDNGjOr+++MiJKpILA4vOt7SmKpjoc=; b=BTMTcWruhZ5nhb9L5vbvBiA6ei
 msXfR1kAeqrrjGZ/HP5KrC+tY23bNHgup67z2ye0A/fYUukElGTxdCCR2jFbnXeRzgkNpdOn6hJmw
 qpEuqXpWewfhdCY51iafNTG/Zg5Iv3vCdwO/x8lbdnalGxrZLGtV4kdAXF+5gNeYZeDs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HXhrQCcoFrDymvDNGjOr+++MiJKpILA4vOt7SmKpjoc=; b=N
 QEnk47+SpYiak71Ze5zxMw83GXy/YMqKvb7x0wY6RAVE0Sgn8GZzoXzUF8sVEXPgIPLj58XwfmWeP
 GFRI3jt5DiQ/4RZMzI4wU7zXM3j5NunSqMeignMY7DBVMGjtywoyhrrh4iDs8vmVpdqQeBzqv7XxH
 vYWemxWbuYEm8seQ=;
Received: from mail-bn8nam12on2079.outbound.protection.outlook.com
 ([40.107.237.79] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7CES-0001oO-BO for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 11:56:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iqQy46wHHFMK69TQRw6DMPltUtqLU4Q/x7XCNoJ5AFcb1R7JVChOthCa+SLFFUZ3lGhUi/j2LUrbZWhve/XrCqQdvNiH8QxY6CoRdE5BQggFByF1OR5BrkSjJbk6V8M1i4FnGjYU1v4CEYxjVxhu8SJ3riIs03AMEAtBBmy0eBOtoy3QvICC4MjYXOwsUpoOOZzmaA9CQ0IaG2RB0F98Lfuzsnwd2eWU7BIAeayOSMHr/8TFWEKZ6EyXLv4439sofBXVSkPKj3sSrAFyg3FZH6+yvIMbcIw70a2RH45BHztMJ/qr/wQAzw+dc0/pj4GJqQWHwAt+ZE50nzwCfLx/Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HXhrQCcoFrDymvDNGjOr+++MiJKpILA4vOt7SmKpjoc=;
 b=vOQYjHgNJm4FfysrowEWej+NwVvANgJM1WE06CWZz0kfrf7r9WmUkGbXjkcc7kbJhpLeEYfO8H4Ca/6VTb+z08Uc66d2h1HFFrH0C/pf2cVGqMbSGQ9LjYiAyucXDazJNKPIzncNaoS7YBTqImamqCTqzaOh2TKKGzunw3+rO8UR2dl35Yf/XHmvm+b6+AEAIFkHnWTyNK6ta0fMkCRNejG9G4cplQU9xowtvfWuT9FSlPBNPUR0ITJm0SS0DOVKfd3GoZFh/BWoHLRuhtiBzx8AJbBcYxnd6jyjAfZjU5dFGFG0R6+ZtAPYvqtqcgcb55CfAR6wIhpknBllqKVcXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HXhrQCcoFrDymvDNGjOr+++MiJKpILA4vOt7SmKpjoc=;
 b=pz2n+J304JU4+OHWLKzbKUkqnLzfn8rkMmw2a/a2jb0JUjyeYJg6vOPGiHvJCEVGYTFJLmhhSnWlmdizsXZ4ooyFvVMYpziyBW/dT3C5zUSedVo8SZxU04af12A5t7XgAgW/iL1nmHhurl0DrADNFRZfuiZut68DpsEWIsKErB0=
Received: from SJ0PR03CA0158.namprd03.prod.outlook.com (2603:10b6:a03:338::13)
 by CYXPR12MB9426.namprd12.prod.outlook.com (2603:10b6:930:e3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.22; Tue, 22 Apr
 2025 11:40:57 +0000
Received: from SJ1PEPF00001CE1.namprd05.prod.outlook.com
 (2603:10b6:a03:338:cafe::5b) by SJ0PR03CA0158.outlook.office365.com
 (2603:10b6:a03:338::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.33 via Frontend Transport; Tue,
 22 Apr 2025 11:40:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 SJ1PEPF00001CE1.mail.protection.outlook.com (10.167.242.9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8655.12 via Frontend Transport; Tue, 22 Apr 2025 11:40:56 +0000
Received: from kaveri.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 22 Apr
 2025 06:40:51 -0500
To: <shaggy@kernel.org>, <akpm@linux-foundation.org>
Date: Tue, 22 Apr 2025 11:40:00 +0000
Message-ID: <20250422114000.15003-1-shivankg@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE1:EE_|CYXPR12MB9426:EE_
X-MS-Office365-Filtering-Correlation-Id: ff105488-20c2-481d-f84d-08dd81928bfd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|36860700013|82310400026|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gnjgjBIz6cctCUTjEsrDExMBV5WI85+DMismD5SSKQpavoLRa757KnAuzhb3?=
 =?us-ascii?Q?RaD+owpr7nH6fIkTi9grJXfkJlmstcR0KHJzSuf7OKJcydK/zpr7Nb8Y8Any?=
 =?us-ascii?Q?lEiH0guBdSdO0gsHmmq2NLJlEKkG52ikSCJX82VW9Apiz+5DiOdBjjCDecKM?=
 =?us-ascii?Q?Vdgq0STEvdiXnWBGshBFkOBLSmhMdjiO6juh69b60DGZxvqjOv4DIa2vlBND?=
 =?us-ascii?Q?QaDc8Fdq9evltHY8awRG4nbLfSND4PdnvSK2Fms7nJXYMhc+wXekGPDya97a?=
 =?us-ascii?Q?O85sx3r2GzGEDNMDr0d//5fu617Zws7U0M7robd1/mPFQ2+t03bBYfpio0pb?=
 =?us-ascii?Q?f6iXBeSzxtJHwmXWPXzhaz8CpD7565x/PPffBR9IzPk007lAs3qVfzHfJob+?=
 =?us-ascii?Q?fY1AVHDTloXglHkMBshk1d4aldY2AEgkgETwcJ0K5YN1eDlCCCx545RXYFHt?=
 =?us-ascii?Q?Silcmkh8efS6cZ3XZZsxZ6tYg7ukfTtL22mIoArdyJU2lEyElVWGKQGFymIg?=
 =?us-ascii?Q?jTW0GwxKrNZrD868JHVrwYTPMjASjoyal2JtUl4W2wiZn+TZSUrSqdFbSKZV?=
 =?us-ascii?Q?8KLA6jiVBwIsi/jVVzzK/cilfDvrsvK8fcJVX+X6MwDoLqst73pyO90txU2X?=
 =?us-ascii?Q?58w6l5iFZouMC0Tzt7CwRwva+XZkkr2X1IVzRNfwqBf0oZYlZiHJojOXT1Ya?=
 =?us-ascii?Q?p/W446enXar00DDcYN4pJeXLxrbWrohCh/jaoyfPUHsZ/JDY3OWfNR/QVzFb?=
 =?us-ascii?Q?UKNKuSxnu8j20GRWeCgca0vlzkmBwoZNkoEsK6j7//Vi6PdazbRQZLWkXuC1?=
 =?us-ascii?Q?pZrWbmO1O667B05u2lhP6qZOo7d1aLd7iylXmfJFC1g4j231+I7/wzsSvmV7?=
 =?us-ascii?Q?sibN+GlgAlMkTjE153L6+bjURTR0tE49fEvoUTWKC1YhhPJVNBpDzpju1Uam?=
 =?us-ascii?Q?AUC54Hy4HFeCoOS/fN0gses5gY42zMRchUptDi6N4c95JzQWGYLVtkYS2A66?=
 =?us-ascii?Q?mdMZZF4V6tbkOOc2t+Ll+aA05MCxaFi6rKHx0s/rARl6D6Lh+I5i/URzAsWO?=
 =?us-ascii?Q?pQFjmG7WYSxK+f9mwnZcsXIeyovsZJtumMvm7XRCa8O/AC++U6QQm+J+IoEg?=
 =?us-ascii?Q?YsIW3DZrO+8rZRRwfl8ey3TMlOs9cUTK3WCw7HdrZgNI8pePm0Amw8RVz0z5?=
 =?us-ascii?Q?oatcnjonWHCbIx3JjfAU9qrSx2jhct3NSo3Tmlb1Z/VjEox2krVlsUM5+1Yo?=
 =?us-ascii?Q?+0d9/2nGvgXw5NJt03vxBxpdm4bmUlpy4SX5gg8EKdCWksN68jWOJBchTcmi?=
 =?us-ascii?Q?iGt2NeTQcoLuJUvP5/50P8IJoxWGVSSELdu3x4W7jM+PstpYuGL70kWwjPik?=
 =?us-ascii?Q?pCU9nsH9i2ia6q8yiGeQGAcytaTnug1sxbXOj/h3bbAygDexvFCFJjS00sOV?=
 =?us-ascii?Q?ltVAu0cFf7YQ8+nTVOLKIVoivIyWMVwHydz9sBNZVMf9C1A4eTR6gA=3D=3D?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(36860700013)(82310400026)(13003099007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2025 11:40:56.9113 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff105488-20c2-481d-f84d-08dd81928bfd
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00001CE1.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR12MB9426
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch addresses a warning that occurs during memory
 compaction
 due to JFS's missing migrate_folio operation. The warning was introduced
 by commit 7ee3647243e5 ("migrate: Remove call to ->writepag [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.237.79 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.237.79 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.79 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.79 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7CES-0001oO-BO
Subject: [Jfs-discussion] [PATCH V4 0/2] JFS: Implement migrate_folio for
 jfs_metapage_aops
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
From: Shivank Garg via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Shivank Garg <shivankg@amd.com>
Cc: shivankg@amd.com, jane.chu@oracle.com, wangkefeng.wang@huawei.com,
 david@redhat.com, apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 willy@infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This patch addresses a warning that occurs during memory compaction due
to JFS's missing migrate_folio operation. The warning was introduced by
commit 7ee3647243e5 ("migrate: Remove call to ->writepage") which added
explicit warnings when filesystem don't implement migrate_folio.

The syzbot reported following [1]:
  jfs_metapage_aops does not implement migrate_folio
  WARNING: CPU: 1 PID: 5861 at mm/migrate.c:955 fallback_migrate_folio mm/migrate.c:953 [inline]
  WARNING: CPU: 1 PID: 5861 at mm/migrate.c:955 move_to_new_folio+0x70e/0x840 mm/migrate.c:1007
  Modules linked in:
  CPU: 1 UID: 0 PID: 5861 Comm: syz-executor280 Not tainted 6.15.0-rc1-next-20250411-syzkaller #0 PREEMPT(full) 
  Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
  RIP: 0010:fallback_migrate_folio mm/migrate.c:953 [inline]
  RIP: 0010:move_to_new_folio+0x70e/0x840 mm/migrate.c:1007

This implement metapage_migrate_folio which handles both single and multiple
metapages per page configurations.

[1]: https://syzkaller.appspot.com/bug?extid=8bb6fd945af4e0ad9299

Previous Versions:
V1/V2:
https://lore.kernel.org/all/20250413172356.561544-1-shivankg@amd.com
V3:
https://lore.kernel.org/all/20250417060630.197278-1-shivankg@amd.com

#syz test: https://github.com/AMDESE/linux-mm.git f17a3b8bc


Shivank Garg (2):
  mm: export folio_expected_refs for JFS migration handler
  jfs: implement migrate_folio for jfs_metapage_aops

 fs/jfs/jfs_metapage.c   | 94 +++++++++++++++++++++++++++++++++++++++++
 include/linux/migrate.h |  1 +
 mm/migrate.c            |  3 +-
 3 files changed, 97 insertions(+), 1 deletion(-)

-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
