Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D19A9755F
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 21:25:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7JF6-0001mZ-Qt;
	Tue, 22 Apr 2025 19:25:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ziy@nvidia.com>) id 1u7Hqf-0008RA-Hp
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 17:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pnSZzJnCar9ZI009uv7YKqxOS+/V0/5sj6W86nt6RX0=; b=SXpan8JU4sTZ6Nh7RXJnRPWFgC
 Kj2iY79NJF4slljy0jmuUT3snl4cIhgtle9yYcd7cqfyuQvxeaIDF6t9pfgpjcJVEjqZOHGV+/r5z
 Q47awwA8uD/r+8cfqbiiYwMYtAhaYpGy8XO9ZLI4jnSGB/7/PJbR7KdqigLtTYsrzX8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pnSZzJnCar9ZI009uv7YKqxOS+/V0/5sj6W86nt6RX0=; b=htNmaSqDjq/LnvFJR4osae1tjY
 No5IUiAWddj6uOcl/AKPShZ9FyNrKLq88nYiHphokj9CH78EbBOdQkPeW77POVcoOCADZaDQf+s02
 EPqkkroY2dCAFbWS/wDyUtMECxA75NOxUB9EetDt3nEZYzLSgjfA8fAJvF4V8cIZeHho=;
Received: from mail-dm6nam11on2079.outbound.protection.outlook.com
 ([40.107.223.79] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7HqP-00033e-BF for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 17:55:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tzwuZ934EwIynHXxdjczOj6sglK09SbzRmyVNtrpbYT/PJpGkWlNQPYUowVI49Y5NykjE10WxrA1QvgfNlX/g8xk2pujEp/w/kaNiVLPa0Bk0ip/sh0F6mJShQ8WoqyfzEhT1gUHgdMdYU6u+wGFBYqJv7gG/zHqT1dDoewrt9wEAPqGUdMpQ+6vFBERvvVmqPUWaMOdrwyl3BWbv1T15f4/9jPir8lJMZSxhqb64PvR0wJWGH8bzryAFayNllPWislA9VK82DxZEPoBuimgOWMri8JCZnnPxHIK5OUUmzwNYMjyn2CRTY6VZEjCKhjATvgNOwB/5zN3xsa1+pSkVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pnSZzJnCar9ZI009uv7YKqxOS+/V0/5sj6W86nt6RX0=;
 b=bvhoI4QkPPtAgB9dcKkauxHeJqZ/IsL+Icy1tUWffrjZH3RyfSDgUiJSazxoWKKimxyeRM1F9eZpREGLgg74SJcyL17P15UL1xWUgvFwCOPzlsqXD7D/7zZXmycCKX8aJx1V5kYsuPHO0qmqaP0Tn3dxIIFLNUabKhxyz4pa2ko8ugVKGj19Ffcjg2elRkf9YSNxzicAFH7oG4UitNnlbKCHWg1dfzKrbLloDR4k9IT4jkkJ2Z9mxgXfHpvOIMSBAutABjNwdgu0oY+nuj+pKdas848vMq7aMLJzbIcv9n/dcBlYGHpwXYfncKj0Os23Lgu62I9V7SbpYIHDWiblrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pnSZzJnCar9ZI009uv7YKqxOS+/V0/5sj6W86nt6RX0=;
 b=p+KlXURqfj71ChE7oyfP33YEiVzPCCkD+5Nya6yUbOpF0xR5GyHTbOzgz7e67i1BXU9QRUQiLyaR0Hdlx1FWZiGrxq+AjZ4UNyF+Nx1GxLRWssb6WcJn3Nqu48NvgXWpXU7q494E87K3nHJhcVvSGbZ7C1Vp5JIAwIrE06kcK/xLMwgqP14ECxx3vejA1EFfUFJeOE8KJnWc04pvYwtodn9KA1ubf+IhcXhtNmGW82JP+n99Zr3wSa7oHNuZrEUthmZNUPXNdmzp56YlPSr1+xSQkRF2Dj2FqD4sDKUfRh/v+htKxc4xVPT7DXaY0yJqzGxN8Kr5wTutcaCh+7v1NQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS7PR12MB9473.namprd12.prod.outlook.com (2603:10b6:8:252::5) by
 SJ1PR12MB6220.namprd12.prod.outlook.com (2603:10b6:a03:455::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 15:22:03 +0000
Received: from DS7PR12MB9473.namprd12.prod.outlook.com
 ([fe80::5189:ecec:d84a:133a]) by DS7PR12MB9473.namprd12.prod.outlook.com
 ([fe80::5189:ecec:d84a:133a%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 15:22:03 +0000
To: Shivank Garg <shivankg@amd.com>
Date: Tue, 22 Apr 2025 11:22:00 -0400
X-Mailer: MailMate (2.0r6245)
Message-ID: <8E39F77F-F3BB-48C1-8C89-9010D00D0A45@nvidia.com>
In-Reply-To: <20250422114000.15003-2-shivankg@amd.com>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
X-ClientProxiedBy: MN0PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:208:52f::33) To DS7PR12MB9473.namprd12.prod.outlook.com
 (2603:10b6:8:252::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB9473:EE_|SJ1PR12MB6220:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b689e74-ef40-455b-a327-08dd81b16f37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?caZInPZXu5Kq0LfHwKUscQdM+6EMx+xUaDzMfbsh2VlnnNqD1pwV8+VWXZ6W?=
 =?us-ascii?Q?OLMAzisqJfxnRFpOas6Dx4iSlbYteUFsQNNldICj7TzL4SLqar1GIo/lfJin?=
 =?us-ascii?Q?xzrY3r1uFJPOHITAYdpESRN7KY35uoW3liNTdxWnayBevB0TKmXpGLhyrCzz?=
 =?us-ascii?Q?cXpkM4BOTaRNeCMDVs9bAgNaKZc3XcHR4w9JSmo0x6tfycN5AviJs0rC5Kk/?=
 =?us-ascii?Q?2sVnXm4iy8NkGCE26pegLBFB2tJpx7jF1fj9tgKncMlEAJ7fypCoC2xj1IU1?=
 =?us-ascii?Q?S/KyChVU3DN4gZS5JdSkZAMU62fc6y1emHdsg259TZ77veeMYac5vBtlKFpi?=
 =?us-ascii?Q?VNGghOjbdENI0/ODpbcpQSgehDbJzm18kiE78rMAL9INsZrSHwRBOJJR51Dt?=
 =?us-ascii?Q?szaeDmpmrL7TSfzvOVS0m54Bb5n2zSPlo40JYy8vFb+686TKBI7+9vC3ZqJ+?=
 =?us-ascii?Q?V/grtd8vZuGQVpSDx9Ym3izd+H/gEGh/KxLGWKhU/w1OFpW0Y0X+jZVsAYch?=
 =?us-ascii?Q?TbKnk4eeHVQ97GGHMiPIubrvSHexWTFLk21nc3sKVsXQ8/IIJRKINJaJnh+U?=
 =?us-ascii?Q?AFsZUX+WLGuBAhf5pYOl4MJ4za7WFVKuAtvMwKNeXjxziRqSJiOHUbVhQ6gO?=
 =?us-ascii?Q?FbEDX3Hh13hsRaL/onpksV03nzp0R9E5xah95ADmSHXSXJ3zzfh+wcBNA+yN?=
 =?us-ascii?Q?8KbTYxOvzCbjLZLcIGROUhc/zk095kH8ibnW9ee2q0ZJ+oiI6C71ArNnuHzr?=
 =?us-ascii?Q?eYVyYeR/5OsWU+si2PLvO2GQx3r3V9yYjwPCfWuMnQdhY5SDyCfpsMdM9uh7?=
 =?us-ascii?Q?eVCJxcTb7Vpw4y7X1ek1562jrFCNMjj6/JgAga2LlJ7T++sThRIsAj29NjZF?=
 =?us-ascii?Q?q5eeLyBGOP22TFRxHVg3bAKpeCRAzE2gOAMhEmadqEgqcAbK8KO8ZJZcMFLb?=
 =?us-ascii?Q?apXkk1RMYIwf2ZchuyBucuUXP9RFq2P9MYFO896PfmKm9HikTqpxEi9ac+2d?=
 =?us-ascii?Q?JVCNyPiQTlc126nkBBgtlpNrr1IzRM9SYXAOp27IXg2bQtb46VdshnVs5eoi?=
 =?us-ascii?Q?oylpJAJmEC/xKwUNJqUX4iuMWFSozLzG0cJYtA7fAznBTjQa3BAbtSUO/oBs?=
 =?us-ascii?Q?eNe78Vz7i3gaqMEl9CfRwsEAYRCYgO36JAv277ckYxYxkan5N6fcqkoOKHQ5?=
 =?us-ascii?Q?Hi++M9jmUpyDinqSfvVp4AquQhW+ECQaeEkF1UUQM3+k0TY7hgx4of9UmDEs?=
 =?us-ascii?Q?d6XZL7287huJpavofolRUY8WDSgUzaLOI8VEy1UNXLyR+PrdoprcDbvKZhPG?=
 =?us-ascii?Q?2gFd8SYRrglidLA22ZDPqtxLmvX7YHEXuJuo7HTmWjyflToyMlCt3A8PyThn?=
 =?us-ascii?Q?Y7UX1kTXEUocJYVPcwSgX1HM4mCPSGTwvOrMbDl/qmdWM7PIFvIkGxBHaCOH?=
 =?us-ascii?Q?FBBdS3wnrLM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB9473.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CQOYw3eBmisb6KZPkSA3SCbdilR3HJ03p+zD4YEuCYUMvhUhTyBG8cD2lW2c?=
 =?us-ascii?Q?tdBoVYs163ClcIn3RDUojkY+reO8q3DT+eLea2e/TyT6fR/Bjvn6o84l4VNt?=
 =?us-ascii?Q?qjPkFNGOM7Vl25uk/X0M5fsJxuEwzZwc13rYEpHeB8sI5xyw4QrH76xS8qjv?=
 =?us-ascii?Q?w4YDxFWQYdvWy2uaH2MkK04m88yowNGda62waJcFdkVKwmldHgn75W2u2248?=
 =?us-ascii?Q?XYImlmDzkZnRZJcOjCcEZh/4j/yqRalzjcIrEWE7uuxD6Ozd4Da14JLDSHAk?=
 =?us-ascii?Q?BiFI2lIqo2H5sQNm9umWV4+oV8v763Uigb5iS9byYGPaWzHcgudgjgkluuEj?=
 =?us-ascii?Q?NJIDQRN6nDDRAB1K+9crBHUmtExjArwk/veZ6Xo4o5ssw8E46hLrMY16+XAG?=
 =?us-ascii?Q?ZOCHbAWdKolv3qhUhkgVEkRtrh62TDY3+C3ExQNmEsfMAMBXCRBRIgCJY/Rt?=
 =?us-ascii?Q?PUuxMrd+bA4R68Mnq2jiI947c0FomvC+5DpZ3qQPvN/1MJjR6b7SRWrOYS8d?=
 =?us-ascii?Q?Arr9576aPMSfG7sPM46xd+mhpWRVw1KIYTlexd5ITQM32KC0oEch0TyYG8uB?=
 =?us-ascii?Q?j5Hbz2kgUEslAdNmo4+Kb1nqeghOAdHSkvkoQ0mG/ok7/k5C8IPKy/W5kVpf?=
 =?us-ascii?Q?cKVldatIza5yVf5IrW15QKYLOQ2PDm+hufIbdO7dyaVZxJAnhPnjurlAKHLF?=
 =?us-ascii?Q?Kdn3aUVZjeJAplo5PjE+TqFsp9/FUb9vWFqsGgWpEHtCPs2zrIWeoyzBEXEp?=
 =?us-ascii?Q?nTu9uhLvKXPuL00hhGO15vyzF6xhtC+2BYGebJUdJQBvS+QWszOKiuD8H7n0?=
 =?us-ascii?Q?O9FRH79dgT2lLa1ZxRXEVTRx7T3zcKOHuIPfhiQ+dwFwh+1lpK6DNU72aLuc?=
 =?us-ascii?Q?1RXHzXhFilOPMrwB5ZLPzmQof+YNxZopf0XuMvYEs3rGzGIMAXW4e5PZYeTd?=
 =?us-ascii?Q?kQFo4HpGfhu5m/KR7GL4q+DeNnxiYHltgN/vsgTWIFyF+4XEzbVr7v6H7jAj?=
 =?us-ascii?Q?dIhSlrjYwHvyEZ3TY5mJA49jiMCiiak19OteY2ZCR1/3u9vvOjS7vkh1uWw9?=
 =?us-ascii?Q?89sQ7J/vIVBf4tqEHrnOe/gheMM7FBc+vMKTebI3GfCZThzCmSMgJ9d/9JZo?=
 =?us-ascii?Q?LMDbqGDtUp47l5FjwvfP8mgOgMcEM+sDnW7SEoVA7U476vhKWaQrk+ksNwP9?=
 =?us-ascii?Q?KKaZneZt4NHtGmozIcY19nrroOFp31w+ohk++2Z0G/aJk58Za0R1pa51DVsU?=
 =?us-ascii?Q?lWVuxQeQLN+ywA6dK94BYnrm0ozbDYqGJhbkMiJf+6uVMffvh9OVLYAXnBSF?=
 =?us-ascii?Q?+K09wK5KdvotJ1Glh+m/svOCthwSMjLquZdUQAW+swJESq8DjnjztodOJ7Dv?=
 =?us-ascii?Q?ha0rdPI4jKUKKv28T3Xtw/xqUzyou0ix/mOfHMt3r7+HpYpT8osN8BbCke20?=
 =?us-ascii?Q?VE7p2v96DePwrPGiZosBm61m+Gdr4QZGqvZl5zaOqqu8aicjimLzhXsEtjHO?=
 =?us-ascii?Q?Z+UyXa0S90lUz0rbm6qacxP4rC7OZT4lsfYht4Mr0M9wd+iPf+3nUH92a1SF?=
 =?us-ascii?Q?RuMrDWlecNpbipI3NiNJNPzbk600nXRobbQ84VOZ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b689e74-ef40-455b-a327-08dd81b16f37
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB9473.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2025 15:22:03.3020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CFmCj92ldmcNxOcYuvvQWAwoMvem7XBFQtNwPutX/HGbuWmVahp47LH/aDt7orEO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6220
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 22 Apr 2025, at 7:40, Shivank Garg wrote: > Rename the
 previously static folio_expected_refs() to clarify its > purpose and scope,
 making it an inline function > folio_migration_expected_refs() to calculate
 expected folio references > during [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.223.79 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.223.79 listed in sa-accredit.habeas.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.79 listed in wl.mailspike.net]
 1.0 FORGED_SPF_HELO        No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7HqP-00033e-BF
X-Mailman-Approved-At: Tue, 22 Apr 2025 19:25:13 +0000
Subject: Re: [Jfs-discussion] [PATCH V4 1/2] mm: add
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
From: Zi Yan via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Zi Yan <ziy@nvidia.com>
Cc: jane.chu@oracle.com, shaggy@kernel.org, wangkefeng.wang@huawei.com,
 david@redhat.com, apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 willy@infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, donettom@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 22 Apr 2025, at 7:40, Shivank Garg wrote:

> Rename the previously static folio_expected_refs() to clarify its
> purpose and scope, making it an inline function
> folio_migration_expected_refs() to calculate expected folio references
> during migration. The function is only suitable for folios unmapped from
> page tables.
>
> Signed-off-by: Shivank Garg <shivankg@amd.com>
> ---
>  include/linux/migrate.h | 26 ++++++++++++++++++++++++++
>  mm/migrate.c            | 22 ++++------------------
>  2 files changed, 30 insertions(+), 18 deletions(-)
>

Acked-by: Zi Yan <ziy@nvidia.com>

Best Regards,
Yan, Zi


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
