Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5A7A91402
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Apr 2025 08:26:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u5Ign-0007Af-Ty;
	Thu, 17 Apr 2025 06:25:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u5Igm-0007AZ-LQ
 for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 06:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GqXY5Er945eAXJw3y2E6CwqK9UQNVuGmxj7sj7iOfXc=; b=TxGs+PtVUxP3kt08kvZj2IiWEd
 hQfXJ8yezdwfb9Pp6bdxG8QvRySUHSqC8GHTHmmvGF0lvAgZS89LavxHuZzbnAVObKkabib2TSes5
 JasI6FErfe9gjp9FunDUC+vX388GCL804ZJzEp1lrxcNjiIRwiPLBprs6a2xMFvUnw/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GqXY5Er945eAXJw3y2E6CwqK9UQNVuGmxj7sj7iOfXc=; b=B
 oZVfTZVLM7/hLGevIdOigb6Gxb3IWvreBTeyO673jn/F1hW0S9YTlzdVpFOyqlKZVifMdYO79SLLp
 FN1SJRKCP1vGCCkEOCiJ3wIn8IKfrAxjzsYqex1maDeTTvDgsva7psCCQ7gfRbdQlQpI3TTArbCo5
 zr6OAUYJTHfX8bBw=;
Received: from mail-bn8nam12on2064.outbound.protection.outlook.com
 ([40.107.237.64] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u5IgW-0002d4-3t for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 06:25:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m3R0Hm1ynKXmBt4gSckeRWtMnIYAny0sfqGcSLY8+IvKbMaAbqaB+vphOzCX1NRREfWfz9DatSQ/sI8ezGuSDIwO7cpMkTZA+fYWiIas0C2u7RDzGwRYVbXEMHszd7iDlTqokhzLrYgs7NEsLcwUeYdwh1n9OX4fG/5se/tRYrbs6IgEOp8HL3Kx+tKOjArBECzq1fVUfpDWaz6ZibicAOGvrwtyz5YsrZiPm1KT79wQ5vW/u45OlGDX17nHmPEPC8TP500NpRZTwHPC+KsBydydjMAHjImN2jXuZTFdF4FrYBd0Y/8RfJiDvfkZlxKIel3skI9wxdIldduElCkGPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GqXY5Er945eAXJw3y2E6CwqK9UQNVuGmxj7sj7iOfXc=;
 b=oD6F7aS0Y7aOcYI1kR+Zl+NY4e5lVuB76KjwYEYQpyUxngjrimynZfYaXIRjUMvaYxt4FwPiiEv7mqdUgKutbsK/Mpig6gYW2MCM9IkizuwYHMkdaYv3EsteRQQy6lOWz2Ki6l17/KPN9wUuFrKungxGEFXOgktA271btzaWFaPyP4rwpUnBwLFH+sLbFhwuHbe2riq0Vq5XwVCMI+HVUiihRPrGMBNDyKv6M9hta9k9jfQJq84+mrfzd1IIm1nV4digUxscZK38Ch8BUru7tmkxzyCbf6DuYwmd72g4UXvH2+ugtHIzX1/Qx31CMSum/rTHydhalk/327Xe7t82nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqXY5Er945eAXJw3y2E6CwqK9UQNVuGmxj7sj7iOfXc=;
 b=f1QQSzUzvUJ9U3QqEsVNE5rM31nicmLl9d6d5MDURijAxm/DcAb6r4eu+WCboD+TOyIf6odvoa6z/zak+hYGuohIsUSz4LWNlXABYgOf8ZFRJMBnFPlCbwArEGaKgGi4p88ePvtJXUaWQL/jNNkd5+SnEOTiLRaRAuZ3FyBhFnU=
Received: from DS0PR17CA0019.namprd17.prod.outlook.com (2603:10b6:8:191::8) by
 PH0PR12MB5648.namprd12.prod.outlook.com (2603:10b6:510:14b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.21; Thu, 17 Apr 2025 06:09:20 +0000
Received: from CY4PEPF0000E9D6.namprd05.prod.outlook.com
 (2603:10b6:8:191:cafe::bd) by DS0PR17CA0019.outlook.office365.com
 (2603:10b6:8:191::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.18 via Frontend Transport; Thu,
 17 Apr 2025 06:09:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CY4PEPF0000E9D6.mail.protection.outlook.com (10.167.241.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8655.12 via Frontend Transport; Thu, 17 Apr 2025 06:09:19 +0000
Received: from kaveri.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 17 Apr
 2025 01:09:14 -0500
To: <shaggy@kernel.org>, <akpm@linux-foundation.org>
Date: Thu, 17 Apr 2025 06:06:29 +0000
Message-ID: <20250417060630.197278-1-shivankg@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9D6:EE_|PH0PR12MB5648:EE_
X-MS-Office365-Filtering-Correlation-Id: d1e2dc27-f3e5-49d6-37d8-08dd7d7663f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|7416014|376014|36860700013|1800799024|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zwXZjIpyWAKuAlhH9kXx4HMaMFMOvQVVv0rubTsUMV0mdaT63JBhSSRy81Km?=
 =?us-ascii?Q?xSmLZeCTJqSBmtz0NkIHtbu9kxDFrc5ZaF3nOx7z8SA/INdVmOZyvj43PPgN?=
 =?us-ascii?Q?3+f9YEqScRgcXhfOjdOAV/IR/cjHe2E8DJLtFiolvM+iHXVnyoDqzwMw8hsC?=
 =?us-ascii?Q?/yGFfnu2tBUd5ns+BE6yoCazdRP6HQEvGQV6d09IWUFXy47Xq2tFur9D/m8K?=
 =?us-ascii?Q?9VVsu6CNc5pqbVaL9B6ArbXZ1p4sVkJQQdT89iBN3jlQpTM5t6XuPS3F+Jfl?=
 =?us-ascii?Q?SXfvqDq2nN7Xs1NuCK+XdlEEpWpsFYqcEoPyKwiD+rJvjoEk/rujzsdf29f1?=
 =?us-ascii?Q?RzM/hWEr4F+SU1ZfT4YHV15FVhqhO/Grgakop/nSH5ksvEtMJLC6O1n69IB1?=
 =?us-ascii?Q?d+J9OzjV5TrFjsquuU5WA1Yyxtw71czRvxc/c9iHFO9YJP5nASTVp4d3Y/Gf?=
 =?us-ascii?Q?JWSdNgaB26rclV753LPtIZ3VdxUFIcBtslwJMqiVQM5IREEL0Ah7NVYcFmpZ?=
 =?us-ascii?Q?RK7TeWysXko1ihyve/Qq7iFrGZ5U31ScJZ8DYcff8kA+y8jFD10GX8ixHSHA?=
 =?us-ascii?Q?ZDO0KiencZAaIYsj59xke+40jMYJJdgzDWWS7ewb04Xqqw2xaaaETz4NCt1p?=
 =?us-ascii?Q?8VXy8VfzHMTgI8j+iUvLE3FNdyfz4pPrAVXxsqfnBh3RXzd+B3lsgEUWRhQb?=
 =?us-ascii?Q?zWb90z4TiMpiFYBxMmn6rO0sGuwcl1WSMRWLOf+8K/9Aen00SmxaFJBBERZh?=
 =?us-ascii?Q?n4zFMvyJ4gRmRr1+ruKmdQkfu+llkSRIGuS39lWrTYK//LEzcBmsj2liVejx?=
 =?us-ascii?Q?HqRnPO3ZBEIUHIUUJee89fpB9diX1InchXqKX1XYZd26idv/pREYdFbuXGT4?=
 =?us-ascii?Q?c3Q6AvuJuk96ZDYEpxra5kXfPhNDJoSWDXJVUSr8cC3Lj3OdZKslMrwcovb2?=
 =?us-ascii?Q?lEmryiLPRszyV67u9dh/+SSx/x8fc4hAlFG+DRG7ThAU4qvokPu1/sEVHd8a?=
 =?us-ascii?Q?MPa47bhAoP7r4qY5NUghlt4xwKgz8nPZhHJxmB1ETou1m/sC3VEdhm29PPvE?=
 =?us-ascii?Q?LpzvIMuEdUXQh/W9+y0wr4HQbXP/4dkQpu7isgbJGv7VPIjN6zZwTzyuAOIb?=
 =?us-ascii?Q?m+svScmC/uMNg7gofg8mC2K4JZ4+g4pstHPc8ObpT0n6vNGe0ol5cdERMfgf?=
 =?us-ascii?Q?rbsADTJUm9ni3Iv79RZV9HyTIBXdHMv5+Sm5i7PikkR8fE/y3poCTntvwefB?=
 =?us-ascii?Q?IIVmw/UiuLdS7ZrI/+mXuJme61UAggYqZV8KcjOQrfjQqBGNAZWnVU9ttnTk?=
 =?us-ascii?Q?HUHXMK0wo0yXEhAVSbfUElq/2wyJrmHkEBUYP2rJ7tEM26gXvsPugTSd8Euk?=
 =?us-ascii?Q?616ut265BCiVrdKLYMAjwBzq49+q7EzkJz/JzEN6yVv6tFLyVwtAXuSYJKzu?=
 =?us-ascii?Q?kFVuS2p4Ian4D8dJ4W3xJp6EuQd9TTkkTHxgf4LOcFPefJ7f7jO08Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(82310400026)(7416014)(376014)(36860700013)(1800799024)(13003099007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 06:09:19.1281 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d1e2dc27-f3e5-49d6-37d8-08dd7d7663f1
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CY4PEPF0000E9D6.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5648
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch addresses a warning that occurs during memory
 compaction
 due to JFS's missing migrate_folio operation. The warning was introduced
 by commit 7ee3647 ("migrate: Remove call to ->writepage") w [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amd.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.64 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.237.64 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.237.64 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.64 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u5IgW-0002d4-3t
Subject: [Jfs-discussion] [PATCH V3 0/2] JFS: Implement migrate_folio for
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
commit 7ee3647 ("migrate: Remove call to ->writepage") which added
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

This Implement metapage_migrate_folio which handles both single and multiple
metapages per page configurations.

[1]: https://syzkaller.appspot.com/bug?extid=8bb6fd945af4e0ad9299

V1/V2:
https://lore.kernel.org/all/20250413172356.561544-1-shivankg@amd.com

#syz test: https://github.com/AMDESE/linux-mm.git 07246f14ea

Best Regards,
Shivank

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
