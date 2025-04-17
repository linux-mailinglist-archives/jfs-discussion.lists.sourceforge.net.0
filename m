Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A705A91401
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Apr 2025 08:26:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u5Igo-0003Vy-UD;
	Thu, 17 Apr 2025 06:25:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u5Ign-0003Vr-HE
 for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 06:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=76khvO0poRuCvreRg3JvNl1lJMM7D8X1ZRniHN8NBWo=; b=hDPK4h2rA2d2TVQWTcik5DDhhw
 w7gkeNXa4GkxHm5URBNwIYcWE1u0vyYiu68/OZFTn8rPjl5HjjuX8Pro7QNwnJkcZ4Ajhzd7xRYWk
 o4ouIFgynRNcNbfh2ACmF7HVTYp8k/Krjk531olEG74gCY6pz120HK7SXTxMCOSCYi70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=76khvO0poRuCvreRg3JvNl1lJMM7D8X1ZRniHN8NBWo=; b=ZdKdzE0piORoOeuDr9MXppJbdb
 6YbZ4saytiR3BwuOljPrWh1GesT8Ek5JyLFr4mcn4jmAHE8VEaM5ZrWH00w/Adw+sZDuLWbpHGax9
 Gco7kLoBJik+aP1pGAEp0KtkK5OdAMLgbkSAHcevJ9aOHl6gDCnrVoZEbtiD5LuvTm+s=;
Received: from mail-co1nam11on2066.outbound.protection.outlook.com
 ([40.107.220.66] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u5IgX-0002d5-RF for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 06:25:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dy1IZFaFrpKFj8960VZCJj9kZFMPTApM880PV0YNYD7IgvIMrBwk85by4CU/jz6UYnwlJL6+gFNCzQm8pTR6jzJVYUzox3DaPezL1AFZz37XKqDAWTP+eZP8VgJWZlvi4SWRvtLdIUY5+Hm9AP4shAWrEqOtvdXnaJB13lj6G7GMkx0JDVY5gE3BzB9fKKgaZTwSb0m53vVULtzvjWh+xs5PCqavCV75aFfDVUUl2B/WnwylIHfUj34+LmPS56TfHukhyeLHUklUuGzgAofdlw4ZzK/JLTmy+AKPVZskTVRipt9lLKnW7pF931yRiruK/diwaI36Z7GrmBa2cDGreg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=76khvO0poRuCvreRg3JvNl1lJMM7D8X1ZRniHN8NBWo=;
 b=xC79+9O7elNuVgfM9iTGeb6jHYHmSMItchRhav3VPjDjVBf8nwObJRYptN1RU9u286OnScCNjmgXlRASGNIycFOXmMqVtaMc1Vu6Kn4vTtFImeeWBOhpMUQwgSaINYKo35kFwNths/pXlZT82BjWrirEvLpGOvMeOqZW1ZifAP6US/IT54yTk9H3Mzbxhd0Xo4tbk6UmChjx1ZlIS62Dlzqjv0XwHCfuAO7ynYWPV85ZQb92MAEVXD0C2ikLhfrKBcU2M8njsdF1Ml2wiKRMwNZx+s/QMnnJ7eBcMaM8SuewbJpw5a8/95YcyBIlD1+xweyxfsbeVyvwkiEwsBkYxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=76khvO0poRuCvreRg3JvNl1lJMM7D8X1ZRniHN8NBWo=;
 b=t8sKJ0flV8LXA+jZuPmw+hDWE5lVdHvI/M/IL5oBepj2f5LDkjyztTZK3ld2Os1bwuXOtO9H+YVILpm7dIx7PjbrJY07VlGxqg1MP7wdgigyW72V2Xu4S9fbjzOCuixgzGMpGdz48kfIrCIIfJewKia4/qVEtA0T+le8z/oI8lw=
Received: from PH7PR17CA0011.namprd17.prod.outlook.com (2603:10b6:510:324::20)
 by DS0PR12MB9039.namprd12.prod.outlook.com (2603:10b6:8:de::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.22; Thu, 17 Apr
 2025 06:09:56 +0000
Received: from CY4PEPF0000E9D7.namprd05.prod.outlook.com
 (2603:10b6:510:324:cafe::d1) by PH7PR17CA0011.outlook.office365.com
 (2603:10b6:510:324::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.23 via Frontend Transport; Thu,
 17 Apr 2025 06:09:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CY4PEPF0000E9D7.mail.protection.outlook.com (10.167.241.70) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8655.12 via Frontend Transport; Thu, 17 Apr 2025 06:09:55 +0000
Received: from kaveri.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 17 Apr
 2025 01:09:50 -0500
To: <shaggy@kernel.org>, <akpm@linux-foundation.org>
Date: Thu, 17 Apr 2025 06:06:32 +0000
Message-ID: <20250417060630.197278-2-shivankg@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250417060630.197278-1-shivankg@amd.com>
References: <20250417060630.197278-1-shivankg@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9D7:EE_|DS0PR12MB9039:EE_
X-MS-Office365-Filtering-Correlation-Id: 2984443b-8969-46d6-2416-08dd7d7679b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|82310400026|36860700013|1800799024; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0F+4f7Mnt2y2Q3ABxIXDv/2F1/RcVpkI16t4XxO30FjuWYyf7tpBWVKv7L7r?=
 =?us-ascii?Q?83LlWe03C2cV2eYdvnUrLsjdKqlOR1/nsyHFiyn2kB26zeiy06VQ1IHmAoAO?=
 =?us-ascii?Q?numeVakEqCkeFZPIdaVOgRnyAejw0zKqCeB61CATfA+A6OgZqev3o/uLadZy?=
 =?us-ascii?Q?maSF7ArV0e6hTq3uiv0IkTmPPX7SGFGmavxSY8qFQlg9d9KbaetSR+K4ftAQ?=
 =?us-ascii?Q?6cr1uOnjJHlv526KJmGog1oW1gWy+VRapHugFw0uSj5rSzVpLLgz+/ChPH93?=
 =?us-ascii?Q?to9+8lajTYputV0vBgUeTcGkqnVomdyjyMTQJbJdvM4hmTI3/QmiRXdl09pM?=
 =?us-ascii?Q?J0VCQc1LUKfMV2naO+Pbs1gp6zkB1FM3q1v2/Uske5cEtCW/FUcZJoc5F+/a?=
 =?us-ascii?Q?UpMYJUoMv0Lf2fyH/hbx/mu97T0Qks1gM2dy+JJ1brn0LCT12ZGYl3H6fqj6?=
 =?us-ascii?Q?5F8aFkf5DIQ/sraNskT39IVXzFEGqLGYPGWZlBvP84Fppr9L9lzt/bMleAjk?=
 =?us-ascii?Q?ldy2DWUh2hQizDbgXKKhQHbIHs20TQNDGHaEx+Ruj04kZrFkDwz0VlmdgDk9?=
 =?us-ascii?Q?Hll/mJPEoFrfsDGMvVE0BiG8zTsxC/CUZ8I1bSiw2FMhRqkMj1tyt79gT5NH?=
 =?us-ascii?Q?oxP2j9MrwhKjEjjjiduR/W2k97wcUfyeSMUSZHEWdSIApamsw5oJIXTyz64o?=
 =?us-ascii?Q?9a0k6EWPWSMNEGSlX74bMdjYHZosCHXNAssgPxFiTzcmxO6crzDc9WNHR9Jn?=
 =?us-ascii?Q?D6y7dC2EhlnFQ8+kZWsidH/Bo3XM2W6cJtrY8QHG33NqaDfZQyhMFUrGaLN8?=
 =?us-ascii?Q?e76ux+0oS191R9MluVY1uaGqCSRLdZieMXBomgu1936pKH2f89Zcro03PedF?=
 =?us-ascii?Q?XgdjxfTpA1Knxw9zoYSXzPGhF/a0FqOsBj+zhJAkxUPG/cTK7vOw8INgPV+n?=
 =?us-ascii?Q?2PcVDV447nI2TnUixBEkc5aMsQFfezsZ1STRH1Y/yaGLscPAmDi/oGqDnHNP?=
 =?us-ascii?Q?cQ6EdE6pQDgR2/O3ZyGbKTQODvstWAABGvQiTXcwG2VKba4E4/98OqocEJfO?=
 =?us-ascii?Q?LDD4CEntHv6lpb3AxToqGvg42UDcCQ+u3ZgyJkU524QTqKyN1rP1R8v5zcF3?=
 =?us-ascii?Q?w9ptdBPrKwvfwww95uNsaRhOO3bXgKznjMB4PPLa4U+W89FhOplh6QfOd8UC?=
 =?us-ascii?Q?KqLYZjIO/YUFj/Q+iaHJCfQW8SxuIknyWJ0nIDYqHMU/u1l20EM6i9GDuf3e?=
 =?us-ascii?Q?8t6NJCOVfOrBffzX0RIFPkBV8WWHPRkBeK0D8/E5mDeFKLPASt5BipitBr6r?=
 =?us-ascii?Q?ZOf1VXTqQpOXPloyrHvkw32Uuiaztr6seg3cH2aHmuGm9XjYE6sNuU0c/PRE?=
 =?us-ascii?Q?lWu6scgx9blxggpxp69svpX77q2vqzyio1M7Z07qEoD696JaAC+2pc1PN/RJ?=
 =?us-ascii?Q?cE8d1X14lGAdir/xh5kNq4141bZOg+JIIH5ChYM/L4jF2MwVzlFX3beZZ8eX?=
 =?us-ascii?Q?338LPYizZ1hMrsgSERcllommrwHZWYnogJR/?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(82310400026)(36860700013)(1800799024); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 06:09:55.6246 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2984443b-8969-46d6-2416-08dd7d7679b2
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CY4PEPF0000E9D7.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB9039
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Export folio_expected_refs() to allow filesystem-specific
 migration handlers like JFS metapage_migrate_folio to properly verify
 reference
 counts before migration. Signed-off-by: Shivank Garg <shivankg@amd.com> ---
 include/linux/migrate.h | 1 + mm/migrate.c | 3 ++- 2 files changed,
 3 insertions(+), 1 deletion(-) 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amd.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.220.66 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.220.66 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.66 listed in wl.mailspike.net]
 1.0 FORGED_SPF_HELO        No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u5IgX-0002d5-RF
Subject: [Jfs-discussion] [PATCH V3 1/2] mm: export folio_expected_refs for
 JFS migration handler
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

Export folio_expected_refs() to allow filesystem-specific migration
handlers like JFS metapage_migrate_folio to properly verify reference
counts before migration.

Signed-off-by: Shivank Garg <shivankg@amd.com>
---
 include/linux/migrate.h | 1 +
 mm/migrate.c            | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/linux/migrate.h b/include/linux/migrate.h
index aaa2114498d6..cb31c5b1eb6a 100644
--- a/include/linux/migrate.h
+++ b/include/linux/migrate.h
@@ -60,6 +60,7 @@ struct movable_operations {
 /* Defined in mm/debug.c: */
 extern const char *migrate_reason_names[MR_TYPES];
 
+int folio_expected_refs(struct address_space *mapping, struct folio *folio);
 #ifdef CONFIG_MIGRATION
 
 void putback_movable_pages(struct list_head *l);
diff --git a/mm/migrate.c b/mm/migrate.c
index 6e2488e5dbe4..0f01b8a87dec 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -445,7 +445,7 @@ void pmd_migration_entry_wait(struct mm_struct *mm, pmd_t *pmd)
 }
 #endif
 
-static int folio_expected_refs(struct address_space *mapping,
+int folio_expected_refs(struct address_space *mapping,
 		struct folio *folio)
 {
 	int refs = 1;
@@ -458,6 +458,7 @@ static int folio_expected_refs(struct address_space *mapping,
 
 	return refs;
 }
+EXPORT_SYMBOL_GPL(folio_expected_refs);
 
 /*
  * Replace the folio in the mapping.
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
