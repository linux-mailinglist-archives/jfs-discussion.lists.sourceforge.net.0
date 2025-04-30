Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40649AA482C
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Apr 2025 12:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PISnrtEpTmMerCo9Jc38SQumFihFjiZcuUXP/r09Pg0=; b=SMgFFZoP1t5jdYBoAQH/kp9YeF
	x2NtRZ1MEmRzoyzawAE5X8WXpXBoyKOi5SeLpMZ22e72JzpWwZ4JEQwxBELy+4lYUrN+nNc52eBNy
	OeqgBSmykKxoCKb7FbsaD16CjapA4CnP4k9jcDEJt7GnZgmb+YpjkKWN9bR6/49gw36M=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uA4X5-0008BE-T9;
	Wed, 30 Apr 2025 10:19:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1uA4X4-0008B7-47
 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 10:19:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jmx4GcCdkuO7r1OgEBOfsuZM1OJ2exaOGX/Ud8dm26o=; b=HhpfIRrT4aPa/3psgadSl/q499
 WRfbwvzcYvWL4vE7hzYAszAPzH08eJ9CePw+CYV6Q+qjefTlzWRgk84Pxp+CMebLnfIUUYRKX/JcZ
 2/V5KXWzp0E+6XqUepejIRzYBxp0wxoMbS4mdKHrb31fMz78wLBGAtQsR1ZSipEc1Gaw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jmx4GcCdkuO7r1OgEBOfsuZM1OJ2exaOGX/Ud8dm26o=; b=eQL28Nx/N53Q24HBDbErWWBrpN
 /MElEGcfrELZkGwzJRDZhGdNlLcs95M/4FAnLj49uYS7+jOtGCDS6MO8iTxbsrNPuZmCPRcvtnVpj
 sSjLtUVzpjbQAowAAVpdQy2gmsof/aoA2ljyavzp5dI8BNjGrN3iB0x6ADEh7CYQ784Q=;
Received: from mail-co1nam11on2076.outbound.protection.outlook.com
 ([40.107.220.76] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uA4Wn-0005qe-Ux for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 10:19:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0PneVeOiop5gVWiOH+e/SfoRvA3sk6m0JLw62QxeQLVJKYyPgQGUh0He+IAmoo50GoaYrG/C0own15grXmOxDqTrKRSrvjkUc4Xk//NsT9aZ9D1TOPYdtM5S8drERuW+wnXgpd7vDR1ODfYfRhsOHcjcjix8CJpO2X0KlVsIrjFe8DcBy+UOtyNd4DHhqU/DAtGovMTCBD35QgPJdCKbNRP6WVm0XVXT1fEdtFUn6EhFGKfvhlXnX+GO5d0GrHSllq1IWcHWEMdrcLGmkZ0UWeiVk0OVKyIcXRA+BPjBlBx3vfLC5bRC7qH/gzbTsP1MrjQWNoVaOZU4BMCCpH6vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jmx4GcCdkuO7r1OgEBOfsuZM1OJ2exaOGX/Ud8dm26o=;
 b=IXkVOEnKhgTaF6tnrVrv2G7ov2umploAOU5kWcXeAGYeRxLO10c5CijwytptXTBbheLUizyv5+ZQbNpXln9y1sy2hxJ8dm7MNakYyYojeuj+diLiK+cIaremticfYQi4loIDap7Mtv2WVPjPfombjofbQFXP6X7QOi9KHJrNttQwa3SCqDNTudSH+swLH0NgO0lYOtNxSCrYdyugGjclfXay+u7vJF58bnu2K+uLrX2qxfGfS2XB6WPGpYx/mtbXEUrFWnUNQAOSr9+bcMNKIIqdSCWqxkzZxjgFayLyVdvkyrN1ZjdhXVEmCvIiGHV8O30nu9tO53qGbfFjnpSmyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jmx4GcCdkuO7r1OgEBOfsuZM1OJ2exaOGX/Ud8dm26o=;
 b=VcwAqeOQ5CbZ+z0DuI8Qg6VKHqxApCLF8NzSmvoeJL3Kim0hExEyEqSt4iXyJte/IqWX7+CYDXzOdJDm7L/HfrYLvRVvicXTGe5vcRLdTN8LJ+JJUYx/5PGNai0q2TFpMSjayDt+WPvsHTxbZM6bhHN6mxAL4a8AvKYfaXb+0c4=
Received: from SJ0PR13CA0191.namprd13.prod.outlook.com (2603:10b6:a03:2c3::16)
 by BY5PR12MB4148.namprd12.prod.outlook.com (2603:10b6:a03:208::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Wed, 30 Apr
 2025 10:03:19 +0000
Received: from SJ1PEPF00002323.namprd03.prod.outlook.com
 (2603:10b6:a03:2c3:cafe::4d) by SJ0PR13CA0191.outlook.office365.com
 (2603:10b6:a03:2c3::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.36 via Frontend Transport; Wed,
 30 Apr 2025 10:03:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 SJ1PEPF00002323.mail.protection.outlook.com (10.167.242.85) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8699.20 via Frontend Transport; Wed, 30 Apr 2025 10:03:19 +0000
Received: from kaveri.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 30 Apr
 2025 05:03:14 -0500
To: <shaggy@kernel.org>, <akpm@linux-foundation.org>
Date: Wed, 30 Apr 2025 10:01:52 +0000
Message-ID: <20250430100150.279751-3-shivankg@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250430100150.279751-1-shivankg@amd.com>
References: <20250430100150.279751-1-shivankg@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002323:EE_|BY5PR12MB4148:EE_
X-MS-Office365-Filtering-Correlation-Id: 27f8d04f-a025-445a-8cf9-08dd87ce3bb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|36860700013|82310400026|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VjhAO7SFmoF7HrAGaKMGp24vvXicsK4HkeFRBQ7abmtcBEX3Wdi+qVxLJpDH?=
 =?us-ascii?Q?BRrTBhKfr4nEvSWJwCf5nG/6djvc2ly4Sf0Buqwq3oh/EQq9QGbIBiZCukKK?=
 =?us-ascii?Q?8jS2cfIqx2p6Dvrnx7bvSmGn1abW2QDkTnACLkQh/cUgCcX59uM7D/xzlUYI?=
 =?us-ascii?Q?k+GZCcIRcg67UtmvaIqgHKAqPZ5iMzwL3yf6nuYoFew39XnPnZWr1Fb66J7M?=
 =?us-ascii?Q?0hj9TX263pFVUSPcO1fwAyenqgOfsOFjehZODityDC7XyaaV2jwM6hPGmGdX?=
 =?us-ascii?Q?r83vZC94DGIdu1BitbhZlKhhorGEVqBFgKVGj8NRZ3Z4iVMCJsdftrRxBQt2?=
 =?us-ascii?Q?0szW6cjn1B1h+s53Fzeuy1/W1/QYUtwQlTqYcRTOEG0IMLngNnxbVTBY9z48?=
 =?us-ascii?Q?OsWkPVFR+kFWQDUs3hEGraQK91yRbJboIIv8iqTsBxYee1mwR3PCUoXrMiWX?=
 =?us-ascii?Q?Yf/ISleWRMoYAYq5gsCZZ+hQb0NEn9FcGty9j2EDR0f2SFecUH5G/RcRnOZV?=
 =?us-ascii?Q?cuZR5/GbbOWtZI2qA9JfndgpTcxjmJfnyrr/TmmcsY7fEVDhbnGW4ETyQ+5X?=
 =?us-ascii?Q?WDO3qS6KF0D1vxk/lq1AIQq8WR+X/F/qS3ggpC0et0/hbTgX7JX0RP7IuWZc?=
 =?us-ascii?Q?rrij9Nj+UJoHxd+sMMLaIfdHSPRb/6OR6yZulJFlFMX8q3VS1+FgVjKQc92n?=
 =?us-ascii?Q?+n5Wid/BxgPni2DKf0lZg7XflSX/N1pd+ftpLS6N/TzyAh4efoQNyR5lxbSm?=
 =?us-ascii?Q?PvFw0jIoLX7buOgJ2wbjlCMsyqyrdLbC4tXtFB18tftjg3vn47TIEuR/cO09?=
 =?us-ascii?Q?3wbj7LOok+Vlj8hVwwQxnpwBqeIYP3ldcV9e8uCZAeqQysz6p3OxK4+0hbu/?=
 =?us-ascii?Q?jfEs1k/iQcmXmonOlscZshbFvsf1ouOUtjEnTDrBxjnflkujXtFa0ZRpTUpI?=
 =?us-ascii?Q?5i5pEvBz1PkGLgkFhLOOFUcIV/KwUfK0hVnyhhdM9W89ewersZGvTjJ0OEwd?=
 =?us-ascii?Q?sar3SzSbSbKNakLfNNPxJl4hnOcyZ81bxZB4GLhq5JDdHxFfKfGD8+U+lQId?=
 =?us-ascii?Q?11857IDIRz9zBfT3uw7SUkCcoahGGTPJbErAjxOyk7m9lCdwEs/MKPnWFhLF?=
 =?us-ascii?Q?zgUmAv6l1x88XTcEzK+ue/+8D4TNSksmKlHmIEoWEjqEGVHrWjSfzuu46yFr?=
 =?us-ascii?Q?F36v0gjltsZSckQHjOAyJ69rQfJ/vk4tKacmZQhNdPVFiNdphznZeIT+zc+u?=
 =?us-ascii?Q?n6Y+YYHea9W5zyAdBWusPL5AJXav24STJCzXs54H+jVmwCdbn767zZ9so8pa?=
 =?us-ascii?Q?v163ZVTiAZLw3H81S9vAuRAVSzMTJ5doblXkyG+k5wvTyK8z9vRZ3Vah7GTU?=
 =?us-ascii?Q?ywE7DFOQCtDjDkT9KD9BElz+NS+xX/4SHnILEjVFyma15DKFf8uVFFiJReZO?=
 =?us-ascii?Q?Ow+h2TgEEBD2+Ty0mPq3UFgKtROR59MxXVOWUe8QZEtKx/wp8di51hlv45TK?=
 =?us-ascii?Q?59fQCxiR2bIvdNhz1WGn/1RbZ4HtWBd2nGHRH8DoxVxg1NZauEIg9pc5rw?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(36860700013)(82310400026)(13003099007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2025 10:03:19.0033 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f8d04f-a025-445a-8cf9-08dd87ce3bb8
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00002323.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4148
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add the missing migrate_folio operation to jfs_metapage_aops
 to fix warnings during memory compaction. These warnings were introduced
 by commit 7ee3647243e5 ("migrate: Remove call to ->writepage") whi [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.220.76 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.220.76 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.76 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.76 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uA4Wn-0005qe-Ux
Subject: [Jfs-discussion] [PATCH V5 2/2] jfs: implement migrate_folio for
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

Add the missing migrate_folio operation to jfs_metapage_aops to fix
warnings during memory compaction. These warnings were introduced by
commit 7ee3647243e5 ("migrate: Remove call to ->writepage") which
added explicit warnings when filesystems don't implement migrate_folio.

System reports following warnings:
  jfs_metapage_aops does not implement migrate_folio
  WARNING: CPU: 0 PID: 6870 at mm/migrate.c:955 fallback_migrate_folio mm/migrate.c:953 [inline]
  WARNING: CPU: 0 PID: 6870 at mm/migrate.c:955 move_to_new_folio+0x70e/0x840 mm/migrate.c:1007

Implement metapage_migrate_folio() which handles both single and multiple
metapages per page configurations.

Fixes: 35474d52c605 ("jfs: Convert metapage_writepage to metapage_write_folio")
Reported-by: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com
Closes: https://lore.kernel.org/all/67faff52.050a0220.379d84.001b.GAE@google.com
Tested-by: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com
Signed-off-by: Shivank Garg <shivankg@amd.com>
---

The commit
e7021e2fe0b4 ("x86/efi: Make efi_enter/leave_mm() use the use_/unuse_temporary_mm() machinery")
is introducing some regression on linux-next, blocking me from testing JFS issue.
https://lore.kernel.org/all/SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com/

After reverting the above series, the syzcaller did not report any issue with my patch.
Syzbot Test link: https://lore.kernel.org/all/6811f0a8.050a0220.39e3a1.0d08.GAE@google.com/
---
 fs/jfs/jfs_metapage.c | 94 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index df575a873ec6..f863ba521533 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -15,6 +15,7 @@
 #include <linux/mempool.h>
 #include <linux/seq_file.h>
 #include <linux/writeback.h>
+#include <linux/migrate.h>
 #include "jfs_incore.h"
 #include "jfs_superblock.h"
 #include "jfs_filsys.h"
@@ -151,6 +152,54 @@ static inline void dec_io(struct folio *folio, blk_status_t status,
 		handler(folio, anchor->status);
 }
 
+static int __metapage_migrate_folio(struct address_space *mapping, struct folio *dst,
+				    struct folio *src, enum migrate_mode mode)
+{
+	struct meta_anchor *src_anchor = src->private;
+	struct metapage *mps[MPS_PER_PAGE] = {0};
+	struct metapage *mp;
+	int i, rc;
+
+	for (i = 0; i < MPS_PER_PAGE; i++) {
+		mp = src_anchor->mp[i];
+		if (mp && metapage_locked(mp))
+			return -EAGAIN;
+	}
+
+	rc = filemap_migrate_folio(mapping, dst, src, mode);
+	if (rc != MIGRATEPAGE_SUCCESS)
+		return rc;
+
+	for (i = 0; i < MPS_PER_PAGE; i++) {
+		mp = src_anchor->mp[i];
+		if (!mp)
+			continue;
+		if (unlikely(insert_metapage(dst, mp))) {
+			/* If error, roll-back previosly inserted pages */
+			for (int j = 0 ; j < i; j++) {
+				if (mps[j])
+					remove_metapage(dst, mps[j]);
+			}
+			return -EAGAIN;
+		}
+		mps[i] = mp;
+	}
+
+	/* Update the metapage and remove it from src */
+	for (i = 0; i < MPS_PER_PAGE; i++) {
+		mp = mps[i];
+		if (mp) {
+			int page_offset = mp->data - folio_address(src);
+
+			mp->data = folio_address(dst) + page_offset;
+			mp->folio = dst;
+			remove_metapage(src, mp);
+		}
+	}
+
+	return MIGRATEPAGE_SUCCESS;
+}
+
 #else
 static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
 {
@@ -175,6 +224,32 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 #define inc_io(folio) do {} while(0)
 #define dec_io(folio, status, handler) handler(folio, status)
 
+static int __metapage_migrate_folio(struct address_space *mapping, struct folio *dst,
+				    struct folio *src, enum migrate_mode mode)
+{
+	struct metapage *mp;
+	int page_offset;
+	int rc;
+
+	mp = folio_to_mp(src, 0);
+	if (mp && metapage_locked(mp))
+		return -EAGAIN;
+
+	rc = filemap_migrate_folio(mapping, dst, src, mode);
+	if (rc != MIGRATEPAGE_SUCCESS)
+		return rc;
+
+	if (unlikely(insert_metapage(dst, mp)))
+		return -EAGAIN;
+
+	page_offset = mp->data - folio_address(src);
+	mp->data = folio_address(dst) + page_offset;
+	mp->folio = dst;
+	remove_metapage(src, mp);
+
+	return MIGRATEPAGE_SUCCESS;
+}
+
 #endif
 
 static inline struct metapage *alloc_metapage(gfp_t gfp_mask)
@@ -554,6 +629,24 @@ static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
 	return ret;
 }
 
+/**
+ * metapage_migrate_folio - Migration function for JFS metapages
+ */
+static int metapage_migrate_folio(struct address_space *mapping, struct folio *dst,
+				  struct folio *src, enum migrate_mode mode)
+{
+	int expected_count;
+
+	if (!src->private)
+		return filemap_migrate_folio(mapping, dst, src, mode);
+
+	/* Check whether page does not have extra refs before we do more work */
+	expected_count = folio_expected_ref_count(src) + 1;
+	if (folio_ref_count(src) != expected_count)
+		return -EAGAIN;
+	return __metapage_migrate_folio(mapping, dst, src, mode);
+}
+
 static void metapage_invalidate_folio(struct folio *folio, size_t offset,
 				    size_t length)
 {
@@ -570,6 +663,7 @@ const struct address_space_operations jfs_metapage_aops = {
 	.release_folio	= metapage_release_folio,
 	.invalidate_folio = metapage_invalidate_folio,
 	.dirty_folio	= filemap_dirty_folio,
+	.migrate_folio	= metapage_migrate_folio,
 };
 
 struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
