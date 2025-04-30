Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD54EAA47D9
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Apr 2025 12:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w6GvZOIuBIOzqdmoeotQabSwKq97kkyTnLl+YcAMpOM=; b=Xyux6IObRceoYDi/ZLXy9+3e+e
	kY3EM5Zgk9TmS+3H5sb/QMjyBW0qXCa8KF5Na2t/jE1F91gsul9STsqoslU480GlxU282ey6Z6W60
	Tyt/BuLqCG4M0zDzOW/0iSO6KolprHMmNCUCL1UyZhTApxWhQh6MvpH7Hm7Z1AeTEScs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uA4Hq-0005zc-Cb;
	Wed, 30 Apr 2025 10:03:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1uA4Hl-0005zB-Uv
 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 10:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BtrFOocbBoNY/vH/A4bLP5apF1obGfCwXyMDvR9NmZw=; b=cz3ADda1mCZmXIhCaGbiGexWhI
 ZOA72wuljDrBfWTlHy8P0C5d2tNftQhopPB3oL0SxqVQkQOboDWYip0/LjmTM1K02I/2lx6Q46Hqz
 wa3wceOGagFlo6a/VqAZnh2/iN1yUG5dZLZlh60ZHFy5HvvetLC8FcD3dzUQp0+mg/kk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BtrFOocbBoNY/vH/A4bLP5apF1obGfCwXyMDvR9NmZw=; b=e
 xgPWbbMmmASzs6ctgkHl0yUkmnu7aPLhz8WOFjBDraWetnRd7WuaOLRSn5joQxNNmZdvu9lK9hBhQ
 iq2jFd4HmR8ZLoklezhnmmFO2xDlQ3r9gDQGyGVR/Y/vTJAtwGcLthaOXqPjhsE+S+O52XtGmpgaO
 BDzF7h1cnFOP/01w=;
Received: from mail-mw2nam10on2082.outbound.protection.outlook.com
 ([40.107.94.82] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uA4HV-0004wT-RQ for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 10:03:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FgDj+M25Nz1Tcld7wgqfq8lbH59vKZTF9elBvdSeJ7O2fSfbl2MT8dz51zn9tNullvFLH1QIMRN64+sdrfIwesrLuJWxFD9kS4ADZDrcFtKJ+cRCxIw7OwGiEjBLdAGjuwp1g7q6dXGXuEfa/Y2uj+lw7RiXe4/9YoX+o9SAstLNZ4tbT3pZbxeDuT6LL0M+bir2fU2iNwJ20bzGpLk9BqM9qvzA2EIhdl3/N6ALoLUkiT6fk6h3ajS1LVHyiL1fOoS+GKWja9OeZwjwOLvI9Nalo1hifLOhGhopQXeQMfWo6IHYQ9dPk9F3/+61LKHuF5QF+KkhVh2dWvIvDk37MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BtrFOocbBoNY/vH/A4bLP5apF1obGfCwXyMDvR9NmZw=;
 b=J5BDn4EincFQ2NqyQFRYvSaftPpKNQhZsHznRrx7VcX4Tav1hcxNxosYqoHdja/c82UKd9aZk5wgOpRKuOsZHwT0A3MSghy9w9ZYOjgrT61Nr9aMBtAqHWFyOtGSRM/LCWYPoNS5Kw+jZz+3yCNzYHa3XPgby1SSpkhMg/WTChsXrdQDQegeEuTDu/poH9if4yCFS0DgS6w67GK5UahwyGV/awVIP/hknY7ryMQ1Tanmgxd8BWGcn5rXF8IAwKg5GEEK2jjmOgwZ7tLUh6wSwuq6tep94GddVl7foJVnPo+aK/mlaIPX8QCWtdgGWUSmpeRWFd9r+Q9RJk8r0mejZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtrFOocbBoNY/vH/A4bLP5apF1obGfCwXyMDvR9NmZw=;
 b=rHD+2GCLnFcaBpxN/vVr8iHM6sO7B6YxduF+fPyUkd6PFe60DqeZT7fCmG0HRVw3tEMflN8HnHrCGigux/fXHtzpXLgvtP0i80sX9de8lOMyKLRLaK/363EKWlQ4ChlFzDG8rHsbKizKmhWX/hfrqlg9uRyvfHzudoBPFpfvUho=
Received: from BYAPR02CA0019.namprd02.prod.outlook.com (2603:10b6:a02:ee::32)
 by DS7PR12MB5936.namprd12.prod.outlook.com (2603:10b6:8:7f::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.27; Wed, 30 Apr 2025 10:02:56 +0000
Received: from SJ1PEPF00002320.namprd03.prod.outlook.com
 (2603:10b6:a02:ee:cafe::88) by BYAPR02CA0019.outlook.office365.com
 (2603:10b6:a02:ee::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.36 via Frontend Transport; Wed,
 30 Apr 2025 10:02:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 SJ1PEPF00002320.mail.protection.outlook.com (10.167.242.86) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8699.20 via Frontend Transport; Wed, 30 Apr 2025 10:02:55 +0000
Received: from kaveri.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 30 Apr
 2025 05:02:51 -0500
To: <shaggy@kernel.org>, <akpm@linux-foundation.org>
Date: Wed, 30 Apr 2025 10:01:49 +0000
Message-ID: <20250430100150.279751-1-shivankg@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002320:EE_|DS7PR12MB5936:EE_
X-MS-Office365-Filtering-Correlation-Id: d27bc3a0-bdb4-4a60-dc4e-08dd87ce2dce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|1800799024|36860700013|376014|7416014|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/76KAsmjb8BaGjp/h6g3/eb1/Sb3cuU2+YlA/9aE92aHEHhHeW4uDCO1m9yK?=
 =?us-ascii?Q?MJs7rtA0cpq6xICuiOvYylUX5ZkeyEknCVmXPveblx/XBjvmlmk7V2fEBCzy?=
 =?us-ascii?Q?XNIDqM0fN1arxPWyUWd6Emb0maqFMVyt9bJrTwEWTNHc3gQmMZK4wbYdheU3?=
 =?us-ascii?Q?2KdpKSakxCnUtZdUf7Qm6Dq4H6vUadsC8lF1EvUTXBIfYPLJlcmps4Ymi/ZG?=
 =?us-ascii?Q?nGaMyGvG5lhQ0/BWt58znTTr0WRKELrgOeN5c2+GgLB0tHFmkNVyWjDKKY6g?=
 =?us-ascii?Q?jWJiMZ/ORG59Z8Dy0/1M/rwFhpmtvY99R6Xr6jShzF59Of8l258fElwPTxMM?=
 =?us-ascii?Q?pVABXLZTUrwPBKG08e9x65/V4lhyCmZe9hj5FpZE8hfZDYA3XgC1PsAduqKJ?=
 =?us-ascii?Q?FJyDzw4CwGpGv+DX6G+QTk0eLtK0lDbBIrGJR9/zeVuey5ye0WIgRY7kf97Y?=
 =?us-ascii?Q?nfKXH/A61noysOswo/2odYILdTNYIZhLQMBnqE4DXJ9lCeyNlLTAw28YQPE/?=
 =?us-ascii?Q?hGPy6TFDAPijnLmN6NVy3Oh3QCCO3xGaQu+JjjOJbw1wc91W0yldHbaJWSHE?=
 =?us-ascii?Q?2YeiJdusQZNehBoSLVDZYE6yMg/zT44ogh5vqPGWAMlPDvPIwZJBG9FHbh/d?=
 =?us-ascii?Q?Haqd/5uonYlp0KVHBPk0WP5CoflLKcy3pl4A8sMY8GQhVvI/7hy59a27TXGK?=
 =?us-ascii?Q?oXJmfA5eyL6TibCtMYRcg9iAuX+brxjI3HBi52mkIRaB+xJ7/cgpTLPiz+B9?=
 =?us-ascii?Q?J0Y5GoQNsTF9/oC5G2QBtHcYxcKnm9KL2z2uvZuC9Ffz7TeGEaVY0sflyw7C?=
 =?us-ascii?Q?x9DnPRrmZZFwy26uJ1i13nWrZR9AjCutYT1YL7TQdNUGO6l5YcPyGjW2b9Y6?=
 =?us-ascii?Q?ertDR+Nzm9VoNlXVAPjrWw/9lWFceM0G3rr1Pk603A578xlqrfLjMQoeiE4R?=
 =?us-ascii?Q?RKKACuepLxWx0Hmdmcy+gIIHOVFcokIWkWznQXZ75OYUHdKLbBIsRutLJC0q?=
 =?us-ascii?Q?3jWlz2RfuQ/iYX/TI487CVnjhGQ/cQgIYfaydn37QN6GwPhYOq6PRDfydmUk?=
 =?us-ascii?Q?nTWMMqSEob3OXh4xIyIgbSC67xCwSmObHrLn/N1Y7WpAqf66XSMKCpz29fj5?=
 =?us-ascii?Q?dSYpuPyLNjcRDMel25RqHiKsLIXM+hY5AgCDseU4/Ec37A7PxJvFpbAHLboL?=
 =?us-ascii?Q?NdbYLeB1pGjxKO5YvthKzSRru7DR3GQ0AkMv9GeGV3j8RvxrNuuXAPsympJI?=
 =?us-ascii?Q?nSvdvrugDS3ixi2cKJG6gWgS1DJxfBcq5KMzKkhC8p+TBoY+BZUZEm6BiAEN?=
 =?us-ascii?Q?X7GaOlo3VeZ0s/UuihJ+7nnFFQOz2GHMwZXniRXF57RVIDqwyEzin6l1+Jx5?=
 =?us-ascii?Q?rXX/VOF0sdgcLXeoo5EVpNbKwV02wsRJhW5g1dBjnfXTPynjq+7YTzh3uoau?=
 =?us-ascii?Q?BYSaYAB71CYR7G0tdw9GmHvl8V2I2Q5HR4CklPG18ohG2sP7OVNTkw=3D=3D?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014)(7416014)(13003099007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2025 10:02:55.6599 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d27bc3a0-bdb4-4a60-dc4e-08dd87ce2dce
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00002320.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5936
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch addresses a warning that occurs during memory
 compaction
 due to JFS's missing migrate_folio operation. The warning was introduced
 by commit 7ee3647243e5 ("migrate: Remove call to ->writepag [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.82 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.94.82 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.94.82 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.82 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uA4HV-0004wT-RQ
Subject: [Jfs-discussion] [PATCH V5 0/2] JFS: Implement migrate_folio for
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

To fix this issue, this series implement metapage_migrate_folio() for JFS
which handles both single and multiple metapages per page configurations.

While most filesystems leverage existing migration implementations like
filemap_migrate_folio(), buffer_migrate_folio_norefs() or buffer_migrate_folio()
(which internally used folio_expected_refs()), JFS's metapage architecture
requires special handling of its private data during migration. To support this,
this series introduce the folio_expected_ref_count(), which calculates
external references to a folio from page/swap cache, private data, and page
table mappings.
This standardized implementation replaces the previous ad-hoc
folio_expected_refs() function and enables JFS to accurately determine whether
a folio has unexpected references before attempting migration.

[1]: https://syzkaller.appspot.com/bug?extid=8bb6fd945af4e0ad9299

Changelogs:
V5 (current):
- Add folio_expected_ref_count() for refcount calculation
- Add details about need of folio_expected_ref_count() for JFS

V4:
- https://lore.kernel.org/all/20250422114000.15003-1-shivankg@amd.com
- Make folio_expected_refs() inline and rename to folio_migration_expected_refs()

V3:
- https://lore.kernel.org/all/20250417060630.197278-1-shivankg@amd.com
- Fix typos

V1/V2:
- https://lore.kernel.org/all/20250413172356.561544-1-shivankg@amd.com
- Implement metapage_migrate_folio() similar to buffer_migrate_folio() but
  specialized to move JFS metapage data

#syz test: https://github.com/shivankgarg98/linux.git 69a58d5260

Shivank Garg (2):
  mm: Add folio_expected_ref_count() for reference count calculation
  jfs: implement migrate_folio for jfs_metapage_aops

 fs/jfs/jfs_metapage.c | 94 +++++++++++++++++++++++++++++++++++++++++++
 include/linux/mm.h    | 55 +++++++++++++++++++++++++
 mm/migrate.c          | 22 ++--------
 3 files changed, 153 insertions(+), 18 deletions(-)

-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
