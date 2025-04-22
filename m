Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FB7A967FA
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 13:43:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7C1E-0004BA-3w;
	Tue, 22 Apr 2025 11:42:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u7C1B-0004B2-I6
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 11:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HWzgdUvOUbxWo4OQPGsZvYzJ3arlF3NrDj2ScVqvOnM=; b=fl8I6h1+LI25T0LTKKlGn+yEQy
 RwX5ITOB+vZSBDcnlsyN/t7+arYs21X1IaJvgzW+uFX0swBeZEvG2Ctzjfy/CFBvIQH8j1fBGKY3F
 IBFwYe8K+Vj94mgKND9+02ymshnJHZmZC7JfP3xQpmtIf6iyk9VHZg8XSNuYZXWjVfeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HWzgdUvOUbxWo4OQPGsZvYzJ3arlF3NrDj2ScVqvOnM=; b=abcE82yEAG6w5mpDYPBeL54EYE
 e4iIp3cPnvU3QG0cLU7nOrZlc1FIKA74TwSVS5xO5c3umQ6gdDN7coa2KC5ohvLVtqBueguNXwJnu
 40DGXYgvHoZk8vbAbqkegVqNgLa7nS8OMSy5qDzCpX3t6hvrcfJd0TxEG9q4qT/4s3QU=;
Received: from mail-mw2nam12on2089.outbound.protection.outlook.com
 ([40.107.244.89] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7C0v-0000uD-Se for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 11:42:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZCpP1NJKaUoOo3NKgu96Rj9vFZpaqXY+tuCdLzu+ZZmoK8Ia96Gm2aktdWkn0yke2WKpx/6DHO5VdPqf01P9NRHXrq6yGXT4p+e5W+rmZWmfD0ofIdNcmFn3hnsCp+8Ub0Q3WO2xPZHomACkh8MFOBaEEubLngx/Xby0vjhqgNvxhADCAXYRF2+VCFFDnSMP8O4NP5Eip04y0vokKKYGWZLK18DGHxLo8GrybypO9RdpZAs6r2TQ/9iGDPZQUETZUT24uluLjLlLvYbex2yZhdZ7uRXjY/ZK8p7B5bskQBzUbK09AfmDzFSnKJr4mABAYWIbOGx1AX8fkLblhJWrNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HWzgdUvOUbxWo4OQPGsZvYzJ3arlF3NrDj2ScVqvOnM=;
 b=KltJ64x5qnBwJsE8XSjgdFqnkTZ1IULzCSQdRu+oIdktMhzgctckGFFCsaDFaY2wsxmO8B2UgWm9GtZ7QiJrOyAa2XpenHeIINep18VvgzD3vES3wiP5yru7gIg8ACUaVv/mvOc/M0eP9KGQfcHJlTvvkep2GGgQ9vy/FfyVhINhE56apHHtkfRlDQC4yUQHOZ3wAkVjc5cW0xC7C2ikRNPyWNJrvexL1VBof+TJvtL55NvD4eO+o2I/u2p3qegFr5AkMnf5cwD1kg4DJZ9N6U/r61lX5eAXqt+3Oip8fd6v63wOO1HD8MhZIn2Y096OTvbRNxom/OGb5TxT95jJLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HWzgdUvOUbxWo4OQPGsZvYzJ3arlF3NrDj2ScVqvOnM=;
 b=MecoZ7XJ895JIyybZsCDPUbNocaqPFsVJ3LaG5dAQaVILSMnVGAkPLSYMBoyT+2zmKH3So+WHacX6POoLU6CUaDgSPERYJin+2aTWcIhl7oX8YMRGa9PTu8desw3E6O3TWU1lQuZ8Bz5ysdfAfDOe3ft+1O8vdTldMqn7cctFbg=
Received: from BY3PR03CA0029.namprd03.prod.outlook.com (2603:10b6:a03:39a::34)
 by LV3PR12MB9142.namprd12.prod.outlook.com (2603:10b6:408:198::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Tue, 22 Apr
 2025 11:42:00 +0000
Received: from SJ1PEPF00001CDC.namprd05.prod.outlook.com
 (2603:10b6:a03:39a:cafe::8d) by BY3PR03CA0029.outlook.office365.com
 (2603:10b6:a03:39a::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.33 via Frontend Transport; Tue,
 22 Apr 2025 11:42:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 SJ1PEPF00001CDC.mail.protection.outlook.com (10.167.242.4) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8655.12 via Frontend Transport; Tue, 22 Apr 2025 11:42:00 +0000
Received: from kaveri.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 22 Apr
 2025 06:41:55 -0500
To: <shaggy@kernel.org>, <akpm@linux-foundation.org>
Date: Tue, 22 Apr 2025 11:40:03 +0000
Message-ID: <20250422114000.15003-2-shivankg@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422114000.15003-1-shivankg@amd.com>
References: <20250422114000.15003-1-shivankg@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CDC:EE_|LV3PR12MB9142:EE_
X-MS-Office365-Filtering-Correlation-Id: 57385a36-b3ea-4794-4676-08dd8192b1e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|36860700013|82310400026|376014|7416014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NjIifRqHkFn6Lg2SqtPAatU1CXGC134tRSNeEhCuF3wDpYeRVaH2EoOXpxb0?=
 =?us-ascii?Q?LBek2ScHpaAa4OfKC2/FwFwr7iFbGFVggtsrQqALNJjJdrSFheacoYxtX+zm?=
 =?us-ascii?Q?h7bUDKRu0duosWXLzYX74tXRuBeKIuU1+5okFy7ZsGm4416NkaO6Ldk73ICz?=
 =?us-ascii?Q?LYOTcFGci18anK8IiPTy0remPtDPLcDyUJbSiGwEoR8aVm6M/8v3P38pyw9l?=
 =?us-ascii?Q?eDtszQQC8rwTM7IIzqTq+TbLA0qh+S16oBaAp4Yffn+559TEEyagAu7JGShR?=
 =?us-ascii?Q?8FSpS+IexFz3aqgDaNs5AGItUbtDGl+g/6hye1PvWgX6DAY2EMmvhWwPKU9i?=
 =?us-ascii?Q?qRF3BZrVzMIZZGsMuESRY8TcxxsNIO2hxauy/YrkbIesmAW5Lc4L9e5emsqt?=
 =?us-ascii?Q?fDMbGIlqEOiCga1nqFpPfMcG2USoUV97ITPchpR0x+SbyjFZMcbfpXplwN+r?=
 =?us-ascii?Q?6M0TarFWK9BmeBa0vTiqB0s+ZODmePB8qOqe7ZJkCOTpMA62HcN7uZntBXfB?=
 =?us-ascii?Q?EFLycdEbVvn+bB5YJk4ad+qO7PJFeU9CFjoXeDjht5/Mwk8x/K33u4FoaLCQ?=
 =?us-ascii?Q?5puMbFZ18mYvwY6YrDTCQLfxhsAwEeJGzmEWA2XyWj9M7mhbNO9+Wvqs2INZ?=
 =?us-ascii?Q?DVvqYHXhprLVw+FHDm041s6nKf83QVkF3tSzHxliVJ93ucOAV6MkRRD1zf+P?=
 =?us-ascii?Q?CwTGViTNSavR+Ppg/C8lWNHDjULAtxSPMHX/hWbdlmS0/lUfc8/bLOxTPOWo?=
 =?us-ascii?Q?1prxd6ItvqcXGXLNh2Wy2K4JgtvmFRd1IlpA3o9OYkjKZ8kPJ/joEDjqOHbL?=
 =?us-ascii?Q?bV/ij8/LWlNvMFSO+vBVdH+bBTvWluqqQ7Tx1s/G08BTmqqg76g3LngtG/nr?=
 =?us-ascii?Q?knRKIeZ31oyD9ZNIDBAWinlGUsgCNFwhtXIvMli4z+rRgRopM5mMVJJw4rP6?=
 =?us-ascii?Q?0KQqtgP0JR3WcgSdyNo11fKrXppHTgOdc18AK+nEMe8P7Eckdh7QeFoRmqZp?=
 =?us-ascii?Q?npyK4tyqoVZbMLGkflsPVNTTUXNT9JKl3B5fYq0xEY57jo0N5nTlLIjhKw1A?=
 =?us-ascii?Q?O/VlSig92P6+0HhD9nFRWZmPn6mzNqjH7SmU8vXJtLYaGsX3Noko7ls55MKV?=
 =?us-ascii?Q?UF0cgOOBMCk2AcMC9oF7pJwlcPH+zeFYeis1NeirokBXslYWRvNlPu8q73hr?=
 =?us-ascii?Q?3h02SbJ1j0t8MssNLQYnkFF3p20pmJsHFZtp1RR5Eu3j8kiBrMdvCfcEnnKq?=
 =?us-ascii?Q?YqiO13qYht7dqKKwgAZa/hG4mHLJjDP+xIUMr4y7P12cZ7qLQ4h2LenJ8fJ8?=
 =?us-ascii?Q?kPME4nx5yRqhm0ugOs45NyhOj/wd8pGXNYYT9yV2Lo0Awa6dxU0ebpM7Htnw?=
 =?us-ascii?Q?4s4JUDTHSVBNjigm3PcIqeu1FLL+08U+hUACzKoyYakibaJQDXacywmG4TQv?=
 =?us-ascii?Q?coDDF1NWaHGt0atuTZwTf0h7Yx+Y+zppyXKc+Jka1dWvKStO0fXsRJjJoeFq?=
 =?us-ascii?Q?dMjd4spn6OWWsPe8eCeNL1YnPKpCs2QfuaLC?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014)(7416014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2025 11:42:00.4545 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 57385a36-b3ea-4794-4676-08dd8192b1e0
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00001CDC.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR12MB9142
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Rename the previously static folio_expected_refs() to clarify
 its purpose and scope,
 making it an inline function folio_migration_expected_refs()
 to calculate expected folio references during migratio [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.244.89 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.244.89 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.89 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.89 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7C0v-0000uD-Se
Subject: [Jfs-discussion] [PATCH V4 1/2] mm: add
 folio_migration_expected_refs() as inline function
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

Rename the previously static folio_expected_refs() to clarify its
purpose and scope, making it an inline function
folio_migration_expected_refs() to calculate expected folio references
during migration. The function is only suitable for folios unmapped from
page tables.

Signed-off-by: Shivank Garg <shivankg@amd.com>
---
 include/linux/migrate.h | 26 ++++++++++++++++++++++++++
 mm/migrate.c            | 22 ++++------------------
 2 files changed, 30 insertions(+), 18 deletions(-)

diff --git a/include/linux/migrate.h b/include/linux/migrate.h
index aaa2114498d6..083293a6d261 100644
--- a/include/linux/migrate.h
+++ b/include/linux/migrate.h
@@ -60,6 +60,32 @@ struct movable_operations {
 /* Defined in mm/debug.c: */
 extern const char *migrate_reason_names[MR_TYPES];
 
+/**
+ * folio_migrate_expected_refs - Count expected references for an unmapped folio.
+ * @mapping: The address space the folio belongs to.
+ * @folio: The folio to check.
+ *
+ * Calculate the expected reference count for a folio during migration.
+ * This function is only suitable for folios that are unmapped from page tables
+ * (i.e., no references from page table mappings: !folio_mapped()).
+ *
+ * Return: The expected reference count
+ */
+static inline int folio_migration_expected_refs(struct address_space *mapping,
+		struct folio *folio)
+{
+	int refs = 1;
+
+	if (!mapping)
+		return refs;
+
+	refs += folio_nr_pages(folio);
+	if (folio_test_private(folio))
+		refs++;
+
+	return refs;
+}
+
 #ifdef CONFIG_MIGRATION
 
 void putback_movable_pages(struct list_head *l);
diff --git a/mm/migrate.c b/mm/migrate.c
index 6e2488e5dbe4..6c785abce90e 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -445,20 +445,6 @@ void pmd_migration_entry_wait(struct mm_struct *mm, pmd_t *pmd)
 }
 #endif
 
-static int folio_expected_refs(struct address_space *mapping,
-		struct folio *folio)
-{
-	int refs = 1;
-	if (!mapping)
-		return refs;
-
-	refs += folio_nr_pages(folio);
-	if (folio_test_private(folio))
-		refs++;
-
-	return refs;
-}
-
 /*
  * Replace the folio in the mapping.
  *
@@ -601,7 +587,7 @@ static int __folio_migrate_mapping(struct address_space *mapping,
 int folio_migrate_mapping(struct address_space *mapping,
 		struct folio *newfolio, struct folio *folio, int extra_count)
 {
-	int expected_count = folio_expected_refs(mapping, folio) + extra_count;
+	int expected_count = folio_migration_expected_refs(mapping, folio) + extra_count;
 
 	if (folio_ref_count(folio) != expected_count)
 		return -EAGAIN;
@@ -618,7 +604,7 @@ int migrate_huge_page_move_mapping(struct address_space *mapping,
 				   struct folio *dst, struct folio *src)
 {
 	XA_STATE(xas, &mapping->i_pages, folio_index(src));
-	int rc, expected_count = folio_expected_refs(mapping, src);
+	int rc, expected_count = folio_migration_expected_refs(mapping, src);
 
 	if (folio_ref_count(src) != expected_count)
 		return -EAGAIN;
@@ -749,7 +735,7 @@ static int __migrate_folio(struct address_space *mapping, struct folio *dst,
 			   struct folio *src, void *src_private,
 			   enum migrate_mode mode)
 {
-	int rc, expected_count = folio_expected_refs(mapping, src);
+	int rc, expected_count = folio_migration_expected_refs(mapping, src);
 
 	/* Check whether src does not have extra refs before we do more work */
 	if (folio_ref_count(src) != expected_count)
@@ -837,7 +823,7 @@ static int __buffer_migrate_folio(struct address_space *mapping,
 		return migrate_folio(mapping, dst, src, mode);
 
 	/* Check whether page does not have extra refs before we do more work */
-	expected_count = folio_expected_refs(mapping, src);
+	expected_count = folio_migration_expected_refs(mapping, src);
 	if (folio_ref_count(src) != expected_count)
 		return -EAGAIN;
 
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
