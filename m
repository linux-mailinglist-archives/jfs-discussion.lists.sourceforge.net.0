Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6710F66C3D1
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Jan 2023 16:27:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pHROM-0000iI-Gl;
	Mon, 16 Jan 2023 15:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yujie.liu@intel.com>) id 1pHJnS-0005tU-Ac;
 Mon, 16 Jan 2023 07:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Subject:CC:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XFZk1eRMb3CZlsP+nWVp8motH3qj8U+pmOcbxFt8cD4=; b=fGSUmlOD3Xv/IC+eWeKfzGYkNn
 aLuz1QpJdkmYgx+OnPRqBk4CQmbP28ehf6GvjdzDOJVe8nmI7dhUrXHt/vKMgHbWgM1gEvldQRbk+
 h639QMxxn4MARn6bEa/Pi1/IVHcMpNonC6wGZFPbn2OxaUsYw/7si+6UFYucIyq1JCrk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Subject:CC:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XFZk1eRMb3CZlsP+nWVp8motH3qj8U+pmOcbxFt8cD4=; b=T
 DvnGrxRpJJV+ikaFhRPgvt1SedZgR6Jj01mPZpj7hmkGUGnJqVu7q7H+YmBJjqSLw/TvhN/YKWFUK
 cG5wtYOyfNriTLOvOorCppyIL2ZtaR9EXOWb9eusUoEnfMyBprnGVGmCG2hXJWHEUw9pLC2Bpjnku
 oyJcYijhsAiAgtEA=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pHJnN-0004UH-FI; Mon, 16 Jan 2023 07:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673853641; x=1705389641;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ErqLKp8aTFdl5gS2V93Tkb7kZVvmgVPRoS5W/oU+/dQ=;
 b=ktJlNulvQ8EOYehrh6LnaR4nl5LkRV9MQLoXNIrO6f+GiPApSPODFouE
 vnjAJ9SJihFCWfx/fsz/gAeFMwQXjrALnS24PK3pH7QrwpPFvd7Dk1+ag
 79muN1UeiB6hoxslzwZpT8W8pz5Lj9yqf+hebQz+ZPQexMkoXhHj94Udd
 ljjGmDOWxi/aDfAX5YazZpv67uVclwJIJusyayoQIQZ9Iv5Fqxc5I9CWy
 2tNyL2D/vk7TzsjrcN9IiJqUXphb6EtRYc0TK02aw0yUO0ehka5UL3r5G
 iXU5zZdNV1/1aQxUQbilwYwh+qiKCtuuZLd/7tUMoirKTMc1zMlonCnhJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="351647693"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; 
 d="xz'341?yaml'341?scan'341,208,341";a="351647693"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2023 23:20:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="747614561"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; 
 d="xz'341?yaml'341?scan'341,208,341";a="747614561"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jan 2023 23:20:33 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 15 Jan 2023 23:20:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 15 Jan 2023 23:20:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 15 Jan 2023 23:20:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YDJN02liqrNaKd2bbAsNaGyLg1Y35p/TzIPaJFt83l8ROpQb8d66+PKD67Y8lJqO38E3d1eVnKXVxbxw/gx7Z+CK9epl3XQV3Rdh6bpHyRtp/E90uNYtZpASgXJ+aBCeFDCKDcOwPsSwzuIiTqsv2wonwSXkcz7BMtAbHfnsoZw9kX3Trph878XKNB45QQly/Uikk6Ij283zkaxp+QHg9YkrWC//p7AUmkQSRhvY41LQodvPO6APsIQLS/7CZj7ZhmImdcqjE9rjiAVRiCwFqisciKA0RPDwjNAQRN0S3E56/hZa2WefU76KfRQZxJwqAxltQr1lvtXh64VYEHbUrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4zuv3xpFduQj3AUqyEM0ShfcgxsLVtm95G+e3ecZG+k=;
 b=ZvG/W4M01sEpI64VpLfjjVd9gjGeRQqC0UpIpia6Ek35HnFh2EeHlnDYHPBuRx8x/RQH1dT9QG52PdJYU4f6HMINF6V0L6BQYKN6XTmdFyeKnYpILW8sPv01jMtQV5GQOnD1XKIge6/ENqRVDe+8KQBH53+ZSUmz+NwgrmYWvdL8nOJKOGCsE3ibKl8SQh+GQ8TnVD9IJJCaEc319Jn+FV03nvRYwhrWjkcuJKK4pRGxmDB7swGOjHzY10NgoXPWIdz8O1N/Ti1GAVFft/55BJG7uoxo0Rx/kezMfkaDqluFuX6DcNqmjIn2d5pGeNtEDkNjH6m2jgMt5xGVHq9mpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6392.namprd11.prod.outlook.com (2603:10b6:930:37::15)
 by SJ0PR11MB5199.namprd11.prod.outlook.com (2603:10b6:a03:2dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Mon, 16 Jan
 2023 07:20:26 +0000
Received: from CY5PR11MB6392.namprd11.prod.outlook.com
 ([fe80::30e3:a7ab:35ba:93bb]) by CY5PR11MB6392.namprd11.prod.outlook.com
 ([fe80::30e3:a7ab:35ba:93bb%9]) with mapi id 15.20.6002.013; Mon, 16 Jan 2023
 07:20:26 +0000
Date: Mon, 16 Jan 2023 15:18:26 +0800
From: kernel test robot <yujie.liu@intel.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <202301161453.f0e8c3a7-yujie.liu@intel.com>
Content-Type: multipart/mixed; boundary="1mmaqbJyHxvoDZp6"
Content-Disposition: inline
X-ClientProxiedBy: SG2PR01CA0189.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::15) To CY5PR11MB6392.namprd11.prod.outlook.com
 (2603:10b6:930:37::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6392:EE_|SJ0PR11MB5199:EE_
X-MS-Office365-Filtering-Correlation-Id: c21aaab3-8a40-4a01-492a-08daf79222da
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vax+Fipn0EuXfOt83/POuN2/lTGWWceOLOiSJkOWxb1DAyelZ6CRUGq/ACBbgdDegr8ux3dVPgyHvwsLPW1A/YtPVL4SdairavP4U2HNe2KJA1xvS8ks+wJQB0tSwTF7fifs9lFg6+y6CKbgX1h6liuEu4THZ9oj8ciJmkQy82/ManupUNBeLtdPvZ4PSUwqWTW4ys3SSPrXVZMiAdwRi+369ihQu2guXRZkuaIgrInmoDIcYvKH79zekzuY9N8Mylb+eBETmg3lxjpk0LtjdGwe+WP/pDRhyxVXk9fy0r7T8hA9rjXXrnlHz3TYfOXSwm7y3z3t8swnYQJgeN7Ewl1ZlbkIdSLht+Xhv4HrAaFfSzXzSBEi/KdLGChGbTfWz/nRxdcC6XQ6NXhiIidUBI/qYpLM7AVqgtheo0BfbpsgqEVHlTdwo8BXKgprPpElJjx3KOpb/ELImXV/fCXK4MZyKun3DVdlkRxsIyF0dNNa1HV3dAfQ5rmK8LBHhjzFK+cnGoJrQP8njQJMkbRi4DAoFx4Xi66Hx7S+yt/Pb9xmxUiiIGJGLFvUBeC76kTCySo8r/ylza/ms0AzshWyBsCOfbzUYJFqlaM1jtDvNaWVJ4ChPngXfqg0ZX9ol6CPCVC9jx6Olfswvjh4cY9LqO53EbShZER0+tilu1b2jUHROcW42IGArPSUin0KDI1W+UvSM5gzxdpVPRtJKRveEC4Yt/jJkT+aU3gZT51akpN8Wafo8he3mf5T1RUqQPRXogyD5tY/6Vwd9iW48sbBxxtGXoI0ybr4NG87byfCe9U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6392.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(346002)(366004)(376002)(451199015)(36756003)(86362001)(4326008)(8936002)(66476007)(6916009)(8676002)(66556008)(66946007)(2906002)(235185007)(7416002)(82960400001)(83380400001)(38100700002)(5660300002)(966005)(478600001)(6486002)(316002)(41300700001)(2616005)(44144004)(6512007)(26005)(1076003)(6506007)(21490400003)(186003)(21314003)(2700100001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?21EDJJZRcaJMQ5kfDEOUtXbqildyOyEzFhINLqqPGguoxX5IgCXIQVOEXZBI?=
 =?us-ascii?Q?mCojjrhINNsxWXtDvjOcxeAR+52ddAyajzn2va2aePQMhLwEYpC/MOSb50yT?=
 =?us-ascii?Q?X/Rc9sfLJ+YNRTkwBqyU171sefvvthyq32QfkuxNEpqsEN8eiGI3lXNMtLkS?=
 =?us-ascii?Q?B/IzGMssiTzNUmkiTl1NLlNFW7z8axVpgJfw2SNK+Mx/vkfGR9cztLh6jlrP?=
 =?us-ascii?Q?BU9oR12OtjEmeRgGFXEOwO5cJYYbt+SCaOBcosiSe6rFl41LUnTLGD50dAh0?=
 =?us-ascii?Q?kilovH+SdI6TQ1ofzq1BdmwbLP8sf5AVx55bV+dY696arkD7Ruh25axxxe24?=
 =?us-ascii?Q?SOX06p3ZRm0+fpL3WczE6WHuSAXNvv+dhYn8Wuk13B4+sTn3XPOQK2DOxt8w?=
 =?us-ascii?Q?rVhyo+q+IwvcTlxFEhXiOzWxz2DWKP2TouTQPCSRKYRXmj1RrrrGGSBw9Ul2?=
 =?us-ascii?Q?7DCu5s+klb8Mlu0SF3Yd/FZx70pxWYyAVr/lCUCMkeD/c68STCPU7K84SYgb?=
 =?us-ascii?Q?TnVubSfPxAGnzvMj1ftGaqVqP6D4DaOrrZq46/dLQQZA9f9SIUspbdAyJBTk?=
 =?us-ascii?Q?BTds5zGqNti+RiZDmELt9FvyO/AHJXF5+H4G6EgYXzNjtbaPpjU+RfrF+9+M?=
 =?us-ascii?Q?M/9UJAKSiUbfMxQjQ9K4Hkn/imAKkMiK6W0/qBKtV17x9r9/F1s7Ao1Hm6DA?=
 =?us-ascii?Q?2gGACfmpMDc6vog60S9R+7si6FPySqLV5KBa8gWPvt0r4dpg7dGDPb37+j7d?=
 =?us-ascii?Q?O0a0Ypbr3zSNi5rbFJ7FirdNqIclEd9RDg6GiNqTMCqM49FQLuwtNZjMJjUE?=
 =?us-ascii?Q?gFINOG8E/gfNTsOMroFBVTrxgbAOj8jyFe4Gm/Mfditur3Qv5sTToxHeVjCW?=
 =?us-ascii?Q?04ofGOEJ6ew2nhuxBxCaWkkPSOjJBLWqNBaUXLhSMalLdfWnAqiemHe6yQkL?=
 =?us-ascii?Q?m10l4BaP8uxv9BavVugHuoUZnUVZw0MfAmoV/vRxEugx5MMZC5t43p26qHF0?=
 =?us-ascii?Q?gOrmm3dHGgMIf4ERv/UXjYWPlEZmY2zRszNfYOEuvcuynqovGk1Ru0cHsu0Q?=
 =?us-ascii?Q?3IbR8C8dAgDeu1f257bY5R3HtgMP7+b6p3rlkJ0VXdsZfIbeJ8GMA/Ygke/P?=
 =?us-ascii?Q?bhVNTsTDSvaIrtyykO/37YaBF5rWAPGb8ZrDJkZSM+iAbhtQ4+jgaD1LrMEw?=
 =?us-ascii?Q?mpFzFGuPPLZkspGGWxGW6eGgjHydDkaEI+jLLX6ItLHhvGjutwIR5sUjikW8?=
 =?us-ascii?Q?TzxmjUqMM/9alomcb0jtYpa7D3esXHPYe5NqafhgU9mbuwZe29eH+xGhy9Cc?=
 =?us-ascii?Q?wUIrKRErQokOzR9dYLQlRENU61Sr0vPbFuija0ICUQpSPASbbRW9W6J+Q1DZ?=
 =?us-ascii?Q?o5/Qg3Ykc89ABnQ7t6VVRaacsaTn+EU0JtIStfbq574gpGpaZtyB+RKrjnZw?=
 =?us-ascii?Q?9ienTiBEq7SvcQ3rGQ+7b47I8byKu1sVqT0okEtQDUihut6G+/eU7Yv/9vpz?=
 =?us-ascii?Q?o4S64EuFZjzFQLE7jPqVuRI3iKM7NwjCLZpJtAepRM0QncfkQVdEdy4/GiZJ?=
 =?us-ascii?Q?ZLnJIJco0+xiObhN7W0SXOKYshMy2KZBb7jwVy/31790poBlM0rD6eVZ4GwD?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c21aaab3-8a40-4a01-492a-08daf79222da
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6392.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 07:20:25.6816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xRmd2C12FL9RIiCnvRzhmvf7R3x+IHXOX0MNlrXGjEDRQ59vgERAD0OA1rBKmntEcVQXIzhzLiovNGK0du5+JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5199
X-OriginatorOrg: intel.com
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greeting,
 Please note this report is for the v4 patch at
 https://lore.kernel.org/r/167305163159.1521586.9460968250704377087.stgit@warthog.procyon.org.uk/
 Since v5 has been posted, this report is for your refere [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pHJnN-0004UH-FI
X-Mailman-Approved-At: Mon, 16 Jan 2023 15:27:19 +0000
Subject: [Jfs-discussion] [dhowells-fs:iov-extract] [iov_iter] 64ea9d6c5f:
 xfstests.btrfs.020/026/215.fail
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
Cc: nvdimm@lists.linux.dev, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, devel@lists.orangefs.org, lkp@intel.com,
 reiserfs-devel@vger.kernel.org, ntfs3@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, oe-lkp@lists.linux.dev,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-xfs@vger.kernel.org,
 ocfs2-devel@oss.oracle.com
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Greeting,

Please note this report is for the v4 patch at
https://lore.kernel.org/r/167305163159.1521586.9460968250704377087.stgit@warthog.procyon.org.uk/
Since v5 has been posted, this report is for your reference only.

We noticed xfstests.btrfs.020/026/215.fail due to commit (built with gcc-11):

commit: 64ea9d6c5f473c29c5de97abaa697856db90fef7 ("iov_iter: Use IOCB/IOMAP_WRITE if available rather than iterator direction")
https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git iov-extract

in testcase: xfstests
version: xfstests-x86_64-fb6575e-1_20230102
with following parameters:

	disk: 6HDD
	fs: btrfs
	test: btrfs-group-02

test-description: xfstests is a regression test suite for xfs and other files ystems.
test-url: git://git.kernel.org/pub/scm/fs/xfs/xfstests-dev.git

on test machine: 8 threads 1 sockets Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz (Haswell) with 8G memory

caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):


btrfs/020       [failed, exit status 1]

btrfs/026       - output mismatch (see /lkp/benchmarks/xfstests/results//btrfs/026.out.bad)
    --- tests/btrfs/026.out	2023-01-02 16:54:41.000000000 +0000
    +++ /lkp/benchmarks/xfstests/results//btrfs/026.out.bad	2023-01-15 04:49:37.182778590 +0000
    @@ -8,8 +8,8 @@
     wrote 268435456/268435456 bytes at offset 3145728
     XXX Bytes, X ops; XX:XX:XX.X (XXX YYY/sec and XXX ops/sec)
     File digests before remounting the file system:
    -647d815906324ccdf288c7681f900ec0  SCRATCH_MNT/foo
    -5876dba1217b4c2915cda86f4c67640e  SCRATCH_MNT/bar
    +2106fb59f7a6292fbb35cf2fc69f74f9  SCRATCH_MNT/foo
    +aca351b2f0529ab0cce383d7e43127d8  SCRATCH_MNT/bar
    ...
    (Run 'diff -u /lkp/benchmarks/xfstests/tests/btrfs/026.out /lkp/benchmarks/xfstests/results//btrfs/026.out.bad'  to see the entire diff)

btrfs/215       [failed, exit status 1]- output mismatch (see /lkp/benchmarks/xfstests/results//btrfs/215.out.bad)
    --- tests/btrfs/215.out	2023-01-02 16:54:41.000000000 +0000
    +++ /lkp/benchmarks/xfstests/results//btrfs/215.out.bad	2023-01-14 18:15:13.161797311 +0000
    @@ -1,2 +1,3 @@
     QA output created by 215
    -Silence is golden
    +Errors: 0 expected: 2
    +(see /lkp/benchmarks/xfstests/results//btrfs/215.full for details)
    ...
    (Run 'diff -u /lkp/benchmarks/xfstests/tests/btrfs/215.out /lkp/benchmarks/xfstests/results//btrfs/215.out.bad'  to see the entire diff)


In addition to that, the commit also has impact on the following tests:

testcase: xfstests
fs: xfs
test: xfs-group-54

2023-01-13 21:25:49 mkfs -t xfs -f -mreflink=0 /dev/sdb1

Metadata corruption detected at 0x43f4b8, xfs_agf block 0x8/0x1000
Metadata corruption detected at 0x43f4b8, xfs_agf block 0x6400008/0x1000
Metadata corruption detected at 0x43f4b8, xfs_agf block 0xc800008/0x1000
Metadata corruption detected at 0x43f4b8, xfs_agf block 0x12c00008/0x1000
Metadata corruption detected at 0x4519d8, xfs_agi block 0x10/0x1000
Metadata corruption detected at 0x4519d8, xfs_agi block 0x6400010/0x1000
Metadata corruption detected at 0x4519d8, xfs_agi block 0xc800010/0x1000
Metadata corruption detected at 0x4519d8, xfs_agi block 0x12c00010/0x1000
Metadata corruption detected at 0x44a3f0, xfs_finobt block 0x38/0x1000
mkfs.xfs: Inode allocation failed [117 - Structure needs cleaning]

meta-data=/dev/sdb1              isize=512    agcount=4, agsize=13107200 blks
         =                       sectsz=4096  attr=2, projid32bit=1
         =                       crc=1        finobt=1, sparse=1, rmapbt=0
         =                       reflink=0    bigtime=0
data     =                       bsize=4096   blocks=52428800, imaxpct=25
         =                       sunit=0      swidth=0 blks
naming   =version 2              bsize=4096   ascii-ci=0, ftype=1
log      =internal log           bsize=4096   blocks=25600, version=2
         =                       sectsz=4096  sunit=1 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0


If you fix the issue, kindly add following tag
| Reported-by: kernel test robot <yujie.liu@intel.com>
| Link: https://lore.kernel.org/oe-lkp/202301161453.f0e8c3a7-yujie.liu@intel.com


To reproduce:

        git clone https://github.com/intel/lkp-tests.git
        cd lkp-tests
        sudo bin/lkp install job.yaml           # job file is attached in this email
        bin/lkp split-job --compatible job.yaml # generate the yaml file for lkp run
        sudo bin/lkp run generated-yaml-file

        # if come across any failure that blocks the test,
        # please remove ~/.lkp and /lkp dir to run from a clean state.


-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment;
	filename="config-6.2.0-rc2-00206-g64ea9d6c5f47"

#
# Automatically generated file; DO NOT EDIT.
# Linux/x86_64 6.2.0-rc2 Kernel Configuration
#
CONFIG_CC_VERSION_TEXT="gcc-11 (Debian 11.3.0-8) 11.3.0"
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=110300
CONFIG_CLANG_VERSION=0
CONFIG_AS_IS_GNU=y
CONFIG_AS_VERSION=23990
CONFIG_LD_IS_BFD=y
CONFIG_LD_VERSION=23990
CONFIG_LLD_VERSION=0
CONFIG_CC_CAN_LINK=y
CONFIG_CC_CAN_LINK_STATIC=y
CONFIG_CC_HAS_ASM_GOTO_OUTPUT=y
CONFIG_CC_HAS_ASM_GOTO_TIED_OUTPUT=y
CONFIG_CC_HAS_ASM_INLINE=y
CONFIG_CC_HAS_NO_PROFILE_FN_ATTR=y
CONFIG_PAHOLE_VERSION=123
CONFIG_CONSTRUCTORS=y
CONFIG_IRQ_WORK=y
CONFIG_BUILDTIME_TABLE_SORT=y
CONFIG_THREAD_INFO_IN_TASK=y

#
# General setup
#
CONFIG_INIT_ENV_ARG_LIMIT=32
# CONFIG_COMPILE_TEST is not set
# CONFIG_WERROR is not set
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BUILD_SALT=""
CONFIG_HAVE_KERNEL_GZIP=y
CONFIG_HAVE_KERNEL_BZIP2=y
CONFIG_HAVE_KERNEL_LZMA=y
CONFIG_HAVE_KERNEL_XZ=y
CONFIG_HAVE_KERNEL_LZO=y
CONFIG_HAVE_KERNEL_LZ4=y
CONFIG_HAVE_KERNEL_ZSTD=y
CONFIG_KERNEL_GZIP=y
# CONFIG_KERNEL_BZIP2 is not set
# CONFIG_KERNEL_LZMA is not set
# CONFIG_KERNEL_XZ is not set
# CONFIG_KERNEL_LZO is not set
# CONFIG_KERNEL_LZ4 is not set
# CONFIG_KERNEL_ZSTD is not set
CONFIG_DEFAULT_INIT=""
CONFIG_DEFAULT_HOSTNAME="(none)"
CONFIG_SYSVIPC=y
CONFIG_SYSVIPC_SYSCTL=y
CONFIG_SYSVIPC_COMPAT=y
CONFIG_POSIX_MQUEUE=y
CONFIG_POSIX_MQUEUE_SYSCTL=y
CONFIG_WATCH_QUEUE=y
CONFIG_CROSS_MEMORY_ATTACH=y
# CONFIG_USELIB is not set
CONFIG_AUDIT=y
CONFIG_HAVE_ARCH_AUDITSYSCALL=y
CONFIG_AUDITSYSCALL=y

#
# IRQ subsystem
#
CONFIG_GENERIC_IRQ_PROBE=y
CONFIG_GENERIC_IRQ_SHOW=y
CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
CONFIG_GENERIC_PENDING_IRQ=y
CONFIG_GENERIC_IRQ_MIGRATION=y
CONFIG_GENERIC_IRQ_INJECTION=y
CONFIG_HARDIRQS_SW_RESEND=y
CONFIG_IRQ_DOMAIN=y
CONFIG_IRQ_DOMAIN_HIERARCHY=y
CONFIG_GENERIC_MSI_IRQ=y
CONFIG_IRQ_MSI_IOMMU=y
CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR=y
CONFIG_GENERIC_IRQ_RESERVATION_MODE=y
CONFIG_IRQ_FORCED_THREADING=y
CONFIG_SPARSE_IRQ=y
# CONFIG_GENERIC_IRQ_DEBUGFS is not set
# end of IRQ subsystem

CONFIG_CLOCKSOURCE_WATCHDOG=y
CONFIG_ARCH_CLOCKSOURCE_INIT=y
CONFIG_CLOCKSOURCE_VALIDATE_LAST_CYCLE=y
CONFIG_GENERIC_TIME_VSYSCALL=y
CONFIG_GENERIC_CLOCKEVENTS=y
CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST=y
CONFIG_GENERIC_CMOS_UPDATE=y
CONFIG_HAVE_POSIX_CPU_TIMERS_TASK_WORK=y
CONFIG_POSIX_CPU_TIMERS_TASK_WORK=y
CONFIG_CONTEXT_TRACKING=y
CONFIG_CONTEXT_TRACKING_IDLE=y

#
# Timers subsystem
#
CONFIG_TICK_ONESHOT=y
CONFIG_NO_HZ_COMMON=y
# CONFIG_HZ_PERIODIC is not set
# CONFIG_NO_HZ_IDLE is not set
CONFIG_NO_HZ_FULL=y
CONFIG_CONTEXT_TRACKING_USER=y
# CONFIG_CONTEXT_TRACKING_USER_FORCE is not set
CONFIG_NO_HZ=y
CONFIG_HIGH_RES_TIMERS=y
CONFIG_CLOCKSOURCE_WATCHDOG_MAX_SKEW_US=100
# end of Timers subsystem

CONFIG_BPF=y
CONFIG_HAVE_EBPF_JIT=y
CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=y

#
# BPF subsystem
#
CONFIG_BPF_SYSCALL=y
CONFIG_BPF_JIT=y
CONFIG_BPF_JIT_ALWAYS_ON=y
CONFIG_BPF_JIT_DEFAULT_ON=y
CONFIG_BPF_UNPRIV_DEFAULT_OFF=y
# CONFIG_BPF_PRELOAD is not set
# CONFIG_BPF_LSM is not set
# end of BPF subsystem

CONFIG_PREEMPT_VOLUNTARY_BUILD=y
# CONFIG_PREEMPT_NONE is not set
CONFIG_PREEMPT_VOLUNTARY=y
# CONFIG_PREEMPT is not set
CONFIG_PREEMPT_COUNT=y
# CONFIG_PREEMPT_DYNAMIC is not set
# CONFIG_SCHED_CORE is not set

#
# CPU/Task time and stats accounting
#
CONFIG_VIRT_CPU_ACCOUNTING=y
CONFIG_VIRT_CPU_ACCOUNTING_GEN=y
CONFIG_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_SCHED_AVG_IRQ=y
CONFIG_BSD_PROCESS_ACCT=y
CONFIG_BSD_PROCESS_ACCT_V3=y
CONFIG_TASKSTATS=y
CONFIG_TASK_DELAY_ACCT=y
CONFIG_TASK_XACCT=y
CONFIG_TASK_IO_ACCOUNTING=y
# CONFIG_PSI is not set
# end of CPU/Task time and stats accounting

CONFIG_CPU_ISOLATION=y

#
# RCU Subsystem
#
CONFIG_TREE_RCU=y
CONFIG_RCU_EXPERT=y
CONFIG_SRCU=y
CONFIG_TREE_SRCU=y
CONFIG_TASKS_RCU_GENERIC=y
CONFIG_FORCE_TASKS_RCU=y
CONFIG_TASKS_RCU=y
# CONFIG_FORCE_TASKS_RUDE_RCU is not set
CONFIG_TASKS_RUDE_RCU=y
CONFIG_FORCE_TASKS_TRACE_RCU=y
CONFIG_TASKS_TRACE_RCU=y
CONFIG_RCU_STALL_COMMON=y
CONFIG_RCU_NEED_SEGCBLIST=y
CONFIG_RCU_FANOUT=64
CONFIG_RCU_FANOUT_LEAF=16
CONFIG_RCU_NOCB_CPU=y
# CONFIG_RCU_NOCB_CPU_DEFAULT_ALL is not set
# CONFIG_TASKS_TRACE_RCU_READ_MB is not set
# CONFIG_RCU_LAZY is not set
# end of RCU Subsystem

CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
# CONFIG_IKHEADERS is not set
CONFIG_LOG_BUF_SHIFT=20
CONFIG_LOG_CPU_MAX_BUF_SHIFT=12
CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
# CONFIG_PRINTK_INDEX is not set
CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=y

#
# Scheduler features
#
# CONFIG_UCLAMP_TASK is not set
# end of Scheduler features

CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=y
CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH=y
CONFIG_CC_HAS_INT128=y
CONFIG_CC_IMPLICIT_FALLTHROUGH="-Wimplicit-fallthrough=5"
CONFIG_GCC12_NO_ARRAY_BOUNDS=y
CONFIG_ARCH_SUPPORTS_INT128=y
CONFIG_NUMA_BALANCING=y
CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
CONFIG_CGROUPS=y
CONFIG_PAGE_COUNTER=y
# CONFIG_CGROUP_FAVOR_DYNMODS is not set
CONFIG_MEMCG=y
CONFIG_MEMCG_KMEM=y
CONFIG_BLK_CGROUP=y
CONFIG_CGROUP_WRITEBACK=y
CONFIG_CGROUP_SCHED=y
CONFIG_FAIR_GROUP_SCHED=y
CONFIG_CFS_BANDWIDTH=y
CONFIG_RT_GROUP_SCHED=y
CONFIG_CGROUP_PIDS=y
CONFIG_CGROUP_RDMA=y
CONFIG_CGROUP_FREEZER=y
CONFIG_CGROUP_HUGETLB=y
CONFIG_CPUSETS=y
CONFIG_PROC_PID_CPUSET=y
CONFIG_CGROUP_DEVICE=y
CONFIG_CGROUP_CPUACCT=y
CONFIG_CGROUP_PERF=y
# CONFIG_CGROUP_BPF is not set
# CONFIG_CGROUP_MISC is not set
# CONFIG_CGROUP_DEBUG is not set
CONFIG_SOCK_CGROUP_DATA=y
CONFIG_NAMESPACES=y
CONFIG_UTS_NS=y
CONFIG_TIME_NS=y
CONFIG_IPC_NS=y
CONFIG_USER_NS=y
CONFIG_PID_NS=y
CONFIG_NET_NS=y
CONFIG_CHECKPOINT_RESTORE=y
CONFIG_SCHED_AUTOGROUP=y
# CONFIG_SYSFS_DEPRECATED is not set
CONFIG_RELAY=y
CONFIG_BLK_DEV_INITRD=y
CONFIG_INITRAMFS_SOURCE=""
CONFIG_RD_GZIP=y
CONFIG_RD_BZIP2=y
CONFIG_RD_LZMA=y
CONFIG_RD_XZ=y
CONFIG_RD_LZO=y
CONFIG_RD_LZ4=y
CONFIG_RD_ZSTD=y
# CONFIG_BOOT_CONFIG is not set
CONFIG_INITRAMFS_PRESERVE_MTIME=y
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
CONFIG_LD_ORPHAN_WARN=y
CONFIG_LD_ORPHAN_WARN_LEVEL="warn"
CONFIG_SYSCTL=y
CONFIG_HAVE_UID16=y
CONFIG_SYSCTL_EXCEPTION_TRACE=y
CONFIG_HAVE_PCSPKR_PLATFORM=y
CONFIG_EXPERT=y
CONFIG_UID16=y
CONFIG_MULTIUSER=y
CONFIG_SGETMASK_SYSCALL=y
CONFIG_SYSFS_SYSCALL=y
CONFIG_FHANDLE=y
CONFIG_POSIX_TIMERS=y
CONFIG_PRINTK=y
CONFIG_BUG=y
CONFIG_ELF_CORE=y
CONFIG_PCSPKR_PLATFORM=y
CONFIG_BASE_FULL=y
CONFIG_FUTEX=y
CONFIG_FUTEX_PI=y
CONFIG_EPOLL=y
CONFIG_SIGNALFD=y
CONFIG_TIMERFD=y
CONFIG_EVENTFD=y
CONFIG_SHMEM=y
CONFIG_AIO=y
CONFIG_IO_URING=y
CONFIG_ADVISE_SYSCALLS=y
CONFIG_MEMBARRIER=y
CONFIG_KALLSYMS=y
# CONFIG_KALLSYMS_SELFTEST is not set
CONFIG_KALLSYMS_ALL=y
CONFIG_KALLSYMS_ABSOLUTE_PERCPU=y
CONFIG_KALLSYMS_BASE_RELATIVE=y
CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
CONFIG_KCMP=y
CONFIG_RSEQ=y
# CONFIG_DEBUG_RSEQ is not set
# CONFIG_EMBEDDED is not set
CONFIG_HAVE_PERF_EVENTS=y
CONFIG_GUEST_PERF_EVENTS=y
# CONFIG_PC104 is not set

#
# Kernel Performance Events And Counters
#
CONFIG_PERF_EVENTS=y
# CONFIG_DEBUG_PERF_USE_VMALLOC is not set
# end of Kernel Performance Events And Counters

CONFIG_SYSTEM_DATA_VERIFICATION=y
CONFIG_PROFILING=y
CONFIG_TRACEPOINTS=y
# end of General setup

CONFIG_64BIT=y
CONFIG_X86_64=y
CONFIG_X86=y
CONFIG_INSTRUCTION_DECODER=y
CONFIG_OUTPUT_FORMAT="elf64-x86-64"
CONFIG_LOCKDEP_SUPPORT=y
CONFIG_STACKTRACE_SUPPORT=y
CONFIG_MMU=y
CONFIG_ARCH_MMAP_RND_BITS_MIN=28
CONFIG_ARCH_MMAP_RND_BITS_MAX=32
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=16
CONFIG_GENERIC_ISA_DMA=y
CONFIG_GENERIC_CSUM=y
CONFIG_GENERIC_BUG=y
CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
CONFIG_ARCH_MAY_HAVE_PC_FDC=y
CONFIG_GENERIC_CALIBRATE_DELAY=y
CONFIG_ARCH_HAS_CPU_RELAX=y
CONFIG_ARCH_HIBERNATION_POSSIBLE=y
CONFIG_ARCH_SUSPEND_POSSIBLE=y
CONFIG_AUDIT_ARCH=y
CONFIG_KASAN_SHADOW_OFFSET=0xdffffc0000000000
CONFIG_HAVE_INTEL_TXT=y
CONFIG_X86_64_SMP=y
CONFIG_ARCH_SUPPORTS_UPROBES=y
CONFIG_FIX_EARLYCON_MEM=y
CONFIG_DYNAMIC_PHYSICAL_MASK=y
CONFIG_PGTABLE_LEVELS=5
CONFIG_CC_HAS_SANE_STACKPROTECTOR=y

#
# Processor type and features
#
CONFIG_SMP=y
CONFIG_X86_FEATURE_NAMES=y
CONFIG_X86_X2APIC=y
CONFIG_X86_MPPARSE=y
# CONFIG_GOLDFISH is not set
# CONFIG_X86_CPU_RESCTRL is not set
CONFIG_X86_EXTENDED_PLATFORM=y
# CONFIG_X86_NUMACHIP is not set
# CONFIG_X86_VSMP is not set
CONFIG_X86_UV=y
# CONFIG_X86_GOLDFISH is not set
# CONFIG_X86_INTEL_MID is not set
CONFIG_X86_INTEL_LPSS=y
# CONFIG_X86_AMD_PLATFORM_DEVICE is not set
CONFIG_IOSF_MBI=y
# CONFIG_IOSF_MBI_DEBUG is not set
CONFIG_X86_SUPPORTS_MEMORY_FAILURE=y
# CONFIG_SCHED_OMIT_FRAME_POINTER is not set
CONFIG_HYPERVISOR_GUEST=y
CONFIG_PARAVIRT=y
# CONFIG_PARAVIRT_DEBUG is not set
CONFIG_PARAVIRT_SPINLOCKS=y
CONFIG_X86_HV_CALLBACK_VECTOR=y
# CONFIG_XEN is not set
CONFIG_KVM_GUEST=y
CONFIG_ARCH_CPUIDLE_HALTPOLL=y
# CONFIG_PVH is not set
CONFIG_PARAVIRT_TIME_ACCOUNTING=y
CONFIG_PARAVIRT_CLOCK=y
# CONFIG_JAILHOUSE_GUEST is not set
# CONFIG_ACRN_GUEST is not set
CONFIG_INTEL_TDX_GUEST=y
# CONFIG_MK8 is not set
# CONFIG_MPSC is not set
# CONFIG_MCORE2 is not set
# CONFIG_MATOM is not set
CONFIG_GENERIC_CPU=y
CONFIG_X86_INTERNODE_CACHE_SHIFT=6
CONFIG_X86_L1_CACHE_SHIFT=6
CONFIG_X86_TSC=y
CONFIG_X86_CMPXCHG64=y
CONFIG_X86_CMOV=y
CONFIG_X86_MINIMUM_CPU_FAMILY=64
CONFIG_X86_DEBUGCTLMSR=y
CONFIG_IA32_FEAT_CTL=y
CONFIG_X86_VMX_FEATURE_NAMES=y
CONFIG_PROCESSOR_SELECT=y
CONFIG_CPU_SUP_INTEL=y
# CONFIG_CPU_SUP_AMD is not set
# CONFIG_CPU_SUP_HYGON is not set
# CONFIG_CPU_SUP_CENTAUR is not set
# CONFIG_CPU_SUP_ZHAOXIN is not set
CONFIG_HPET_TIMER=y
CONFIG_HPET_EMULATE_RTC=y
CONFIG_DMI=y
CONFIG_BOOT_VESA_SUPPORT=y
CONFIG_MAXSMP=y
CONFIG_NR_CPUS_RANGE_BEGIN=8192
CONFIG_NR_CPUS_RANGE_END=8192
CONFIG_NR_CPUS_DEFAULT=8192
CONFIG_NR_CPUS=8192
CONFIG_SCHED_CLUSTER=y
CONFIG_SCHED_SMT=y
CONFIG_SCHED_MC=y
CONFIG_SCHED_MC_PRIO=y
CONFIG_X86_LOCAL_APIC=y
CONFIG_X86_IO_APIC=y
CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=y
CONFIG_X86_MCE=y
CONFIG_X86_MCELOG_LEGACY=y
CONFIG_X86_MCE_INTEL=y
CONFIG_X86_MCE_THRESHOLD=y
CONFIG_X86_MCE_INJECT=m

#
# Performance monitoring
#
CONFIG_PERF_EVENTS_INTEL_UNCORE=m
CONFIG_PERF_EVENTS_INTEL_RAPL=m
CONFIG_PERF_EVENTS_INTEL_CSTATE=m
# end of Performance monitoring

CONFIG_X86_16BIT=y
CONFIG_X86_ESPFIX64=y
CONFIG_X86_VSYSCALL_EMULATION=y
CONFIG_X86_IOPL_IOPERM=y
CONFIG_MICROCODE=y
CONFIG_MICROCODE_INTEL=y
CONFIG_MICROCODE_LATE_LOADING=y
CONFIG_X86_MSR=m
CONFIG_X86_CPUID=y
CONFIG_X86_5LEVEL=y
CONFIG_X86_DIRECT_GBPAGES=y
# CONFIG_X86_CPA_STATISTICS is not set
CONFIG_X86_MEM_ENCRYPT=y
CONFIG_NUMA=y
# CONFIG_AMD_NUMA is not set
CONFIG_X86_64_ACPI_NUMA=y
CONFIG_NUMA_EMU=y
CONFIG_NODES_SHIFT=10
CONFIG_ARCH_SPARSEMEM_ENABLE=y
CONFIG_ARCH_SPARSEMEM_DEFAULT=y
# CONFIG_ARCH_MEMORY_PROBE is not set
CONFIG_ARCH_PROC_KCORE_TEXT=y
CONFIG_ILLEGAL_POINTER_VALUE=0xdead000000000000
CONFIG_X86_PMEM_LEGACY_DEVICE=y
CONFIG_X86_PMEM_LEGACY=m
CONFIG_X86_CHECK_BIOS_CORRUPTION=y
# CONFIG_X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK is not set
CONFIG_MTRR=y
CONFIG_MTRR_SANITIZER=y
CONFIG_MTRR_SANITIZER_ENABLE_DEFAULT=1
CONFIG_MTRR_SANITIZER_SPARE_REG_NR_DEFAULT=1
CONFIG_X86_PAT=y
CONFIG_ARCH_USES_PG_UNCACHED=y
CONFIG_X86_UMIP=y
CONFIG_CC_HAS_IBT=y
CONFIG_X86_KERNEL_IBT=y
CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS=y
# CONFIG_X86_INTEL_TSX_MODE_OFF is not set
# CONFIG_X86_INTEL_TSX_MODE_ON is not set
CONFIG_X86_INTEL_TSX_MODE_AUTO=y
# CONFIG_X86_SGX is not set
CONFIG_EFI=y
CONFIG_EFI_STUB=y
CONFIG_EFI_HANDOVER_PROTOCOL=y
CONFIG_EFI_MIXED=y
# CONFIG_EFI_FAKE_MEMMAP is not set
CONFIG_EFI_RUNTIME_MAP=y
# CONFIG_HZ_100 is not set
# CONFIG_HZ_250 is not set
# CONFIG_HZ_300 is not set
CONFIG_HZ_1000=y
CONFIG_HZ=1000
CONFIG_SCHED_HRTICK=y
CONFIG_KEXEC=y
CONFIG_KEXEC_FILE=y
CONFIG_ARCH_HAS_KEXEC_PURGATORY=y
# CONFIG_KEXEC_SIG is not set
CONFIG_CRASH_DUMP=y
CONFIG_KEXEC_JUMP=y
CONFIG_PHYSICAL_START=0x1000000
CONFIG_RELOCATABLE=y
# CONFIG_RANDOMIZE_BASE is not set
CONFIG_PHYSICAL_ALIGN=0x200000
CONFIG_DYNAMIC_MEMORY_LAYOUT=y
CONFIG_HOTPLUG_CPU=y
CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
# CONFIG_DEBUG_HOTPLUG_CPU0 is not set
# CONFIG_COMPAT_VDSO is not set
CONFIG_LEGACY_VSYSCALL_XONLY=y
# CONFIG_LEGACY_VSYSCALL_NONE is not set
# CONFIG_CMDLINE_BOOL is not set
CONFIG_MODIFY_LDT_SYSCALL=y
# CONFIG_STRICT_SIGALTSTACK_SIZE is not set
CONFIG_HAVE_LIVEPATCH=y
CONFIG_LIVEPATCH=y
# end of Processor type and features

CONFIG_CC_HAS_SLS=y
CONFIG_CC_HAS_RETURN_THUNK=y
CONFIG_CC_HAS_ENTRY_PADDING=y
CONFIG_FUNCTION_PADDING_CFI=11
CONFIG_FUNCTION_PADDING_BYTES=16
CONFIG_SPECULATION_MITIGATIONS=y
CONFIG_PAGE_TABLE_ISOLATION=y
# CONFIG_RETPOLINE is not set
CONFIG_CPU_IBRS_ENTRY=y
# CONFIG_SLS is not set
CONFIG_ARCH_HAS_ADD_PAGES=y
CONFIG_ARCH_MHP_MEMMAP_ON_MEMORY_ENABLE=y

#
# Power management and ACPI options
#
CONFIG_ARCH_HIBERNATION_HEADER=y
CONFIG_SUSPEND=y
CONFIG_SUSPEND_FREEZER=y
# CONFIG_SUSPEND_SKIP_SYNC is not set
CONFIG_HIBERNATE_CALLBACKS=y
CONFIG_HIBERNATION=y
CONFIG_HIBERNATION_SNAPSHOT_DEV=y
CONFIG_PM_STD_PARTITION=""
CONFIG_PM_SLEEP=y
CONFIG_PM_SLEEP_SMP=y
# CONFIG_PM_AUTOSLEEP is not set
# CONFIG_PM_USERSPACE_AUTOSLEEP is not set
# CONFIG_PM_WAKELOCKS is not set
CONFIG_PM=y
CONFIG_PM_DEBUG=y
# CONFIG_PM_ADVANCED_DEBUG is not set
# CONFIG_PM_TEST_SUSPEND is not set
CONFIG_PM_SLEEP_DEBUG=y
# CONFIG_DPM_WATCHDOG is not set
# CONFIG_PM_TRACE_RTC is not set
CONFIG_PM_CLK=y
# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
# CONFIG_ENERGY_MODEL is not set
CONFIG_ARCH_SUPPORTS_ACPI=y
CONFIG_ACPI=y
CONFIG_ACPI_LEGACY_TABLES_LOOKUP=y
CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC=y
CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT=y
# CONFIG_ACPI_DEBUGGER is not set
CONFIG_ACPI_SPCR_TABLE=y
# CONFIG_ACPI_FPDT is not set
CONFIG_ACPI_LPIT=y
CONFIG_ACPI_SLEEP=y
CONFIG_ACPI_REV_OVERRIDE_POSSIBLE=y
CONFIG_ACPI_EC_DEBUGFS=m
CONFIG_ACPI_AC=y
CONFIG_ACPI_BATTERY=y
CONFIG_ACPI_BUTTON=y
CONFIG_ACPI_VIDEO=m
CONFIG_ACPI_FAN=y
CONFIG_ACPI_TAD=m
CONFIG_ACPI_DOCK=y
CONFIG_ACPI_CPU_FREQ_PSS=y
CONFIG_ACPI_PROCESSOR_CSTATE=y
CONFIG_ACPI_PROCESSOR_IDLE=y
CONFIG_ACPI_CPPC_LIB=y
CONFIG_ACPI_PROCESSOR=y
CONFIG_ACPI_IPMI=m
CONFIG_ACPI_HOTPLUG_CPU=y
CONFIG_ACPI_PROCESSOR_AGGREGATOR=m
CONFIG_ACPI_THERMAL=y
CONFIG_ACPI_PLATFORM_PROFILE=m
CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=y
CONFIG_ACPI_TABLE_UPGRADE=y
# CONFIG_ACPI_DEBUG is not set
CONFIG_ACPI_PCI_SLOT=y
CONFIG_ACPI_CONTAINER=y
CONFIG_ACPI_HOTPLUG_MEMORY=y
CONFIG_ACPI_HOTPLUG_IOAPIC=y
CONFIG_ACPI_SBS=m
CONFIG_ACPI_HED=y
# CONFIG_ACPI_CUSTOM_METHOD is not set
CONFIG_ACPI_BGRT=y
# CONFIG_ACPI_REDUCED_HARDWARE_ONLY is not set
CONFIG_ACPI_NFIT=m
# CONFIG_NFIT_SECURITY_DEBUG is not set
CONFIG_ACPI_NUMA=y
# CONFIG_ACPI_HMAT is not set
CONFIG_HAVE_ACPI_APEI=y
CONFIG_HAVE_ACPI_APEI_NMI=y
CONFIG_ACPI_APEI=y
CONFIG_ACPI_APEI_GHES=y
CONFIG_ACPI_APEI_PCIEAER=y
CONFIG_ACPI_APEI_MEMORY_FAILURE=y
CONFIG_ACPI_APEI_EINJ=m
# CONFIG_ACPI_APEI_ERST_DEBUG is not set
# CONFIG_ACPI_DPTF is not set
CONFIG_ACPI_WATCHDOG=y
CONFIG_ACPI_EXTLOG=m
CONFIG_ACPI_ADXL=y
# CONFIG_ACPI_CONFIGFS is not set
# CONFIG_ACPI_PFRUT is not set
CONFIG_ACPI_PCC=y
# CONFIG_ACPI_FFH is not set
CONFIG_PMIC_OPREGION=y
CONFIG_ACPI_PRMT=y
CONFIG_X86_PM_TIMER=y

#
# CPU Frequency scaling
#
CONFIG_CPU_FREQ=y
CONFIG_CPU_FREQ_GOV_ATTR_SET=y
CONFIG_CPU_FREQ_GOV_COMMON=y
CONFIG_CPU_FREQ_STAT=y
CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE=y
# CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL is not set
CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
CONFIG_CPU_FREQ_GOV_POWERSAVE=y
CONFIG_CPU_FREQ_GOV_USERSPACE=y
CONFIG_CPU_FREQ_GOV_ONDEMAND=y
CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y

#
# CPU frequency scaling drivers
#
CONFIG_X86_INTEL_PSTATE=y
# CONFIG_X86_PCC_CPUFREQ is not set
# CONFIG_X86_AMD_PSTATE is not set
# CONFIG_X86_AMD_PSTATE_UT is not set
CONFIG_X86_ACPI_CPUFREQ=m
# CONFIG_X86_POWERNOW_K8 is not set
# CONFIG_X86_SPEEDSTEP_CENTRINO is not set
CONFIG_X86_P4_CLOCKMOD=m

#
# shared options
#
CONFIG_X86_SPEEDSTEP_LIB=m
# end of CPU Frequency scaling

#
# CPU Idle
#
CONFIG_CPU_IDLE=y
# CONFIG_CPU_IDLE_GOV_LADDER is not set
CONFIG_CPU_IDLE_GOV_MENU=y
# CONFIG_CPU_IDLE_GOV_TEO is not set
# CONFIG_CPU_IDLE_GOV_HALTPOLL is not set
CONFIG_HALTPOLL_CPUIDLE=y
# end of CPU Idle

CONFIG_INTEL_IDLE=y
# end of Power management and ACPI options

#
# Bus options (PCI etc.)
#
CONFIG_PCI_DIRECT=y
CONFIG_PCI_MMCONFIG=y
CONFIG_MMCONF_FAM10H=y
# CONFIG_PCI_CNB20LE_QUIRK is not set
# CONFIG_ISA_BUS is not set
CONFIG_ISA_DMA_API=y
# end of Bus options (PCI etc.)

#
# Binary Emulations
#
CONFIG_IA32_EMULATION=y
# CONFIG_X86_X32_ABI is not set
CONFIG_COMPAT_32=y
CONFIG_COMPAT=y
CONFIG_COMPAT_FOR_U64_ALIGNMENT=y
# end of Binary Emulations

CONFIG_HAVE_KVM=y
CONFIG_HAVE_KVM_PFNCACHE=y
CONFIG_HAVE_KVM_IRQCHIP=y
CONFIG_HAVE_KVM_IRQFD=y
CONFIG_HAVE_KVM_IRQ_ROUTING=y
CONFIG_HAVE_KVM_DIRTY_RING=y
CONFIG_HAVE_KVM_DIRTY_RING_TSO=y
CONFIG_HAVE_KVM_DIRTY_RING_ACQ_REL=y
CONFIG_HAVE_KVM_EVENTFD=y
CONFIG_KVM_MMIO=y
CONFIG_KVM_ASYNC_PF=y
CONFIG_HAVE_KVM_MSI=y
CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT=y
CONFIG_KVM_VFIO=y
CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=y
CONFIG_KVM_COMPAT=y
CONFIG_HAVE_KVM_IRQ_BYPASS=y
CONFIG_HAVE_KVM_NO_POLL=y
CONFIG_KVM_XFER_TO_GUEST_WORK=y
CONFIG_HAVE_KVM_PM_NOTIFIER=y
CONFIG_VIRTUALIZATION=y
CONFIG_KVM=m
# CONFIG_KVM_WERROR is not set
CONFIG_KVM_INTEL=m
# CONFIG_KVM_AMD is not set
CONFIG_KVM_SMM=y
# CONFIG_KVM_XEN is not set
CONFIG_AS_AVX512=y
CONFIG_AS_SHA1_NI=y
CONFIG_AS_SHA256_NI=y
CONFIG_AS_TPAUSE=y

#
# General architecture-dependent options
#
CONFIG_CRASH_CORE=y
CONFIG_KEXEC_CORE=y
CONFIG_HAVE_IMA_KEXEC=y
CONFIG_HOTPLUG_SMT=y
CONFIG_GENERIC_ENTRY=y
CONFIG_KPROBES=y
CONFIG_JUMP_LABEL=y
# CONFIG_STATIC_KEYS_SELFTEST is not set
# CONFIG_STATIC_CALL_SELFTEST is not set
CONFIG_OPTPROBES=y
CONFIG_KPROBES_ON_FTRACE=y
CONFIG_UPROBES=y
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
CONFIG_ARCH_USE_BUILTIN_BSWAP=y
CONFIG_KRETPROBES=y
CONFIG_KRETPROBE_ON_RETHOOK=y
CONFIG_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_IOREMAP_PROT=y
CONFIG_HAVE_KPROBES=y
CONFIG_HAVE_KRETPROBES=y
CONFIG_HAVE_OPTPROBES=y
CONFIG_HAVE_KPROBES_ON_FTRACE=y
CONFIG_ARCH_CORRECT_STACKTRACE_ON_KRETPROBE=y
CONFIG_HAVE_FUNCTION_ERROR_INJECTION=y
CONFIG_HAVE_NMI=y
CONFIG_TRACE_IRQFLAGS_SUPPORT=y
CONFIG_TRACE_IRQFLAGS_NMI_SUPPORT=y
CONFIG_HAVE_ARCH_TRACEHOOK=y
CONFIG_HAVE_DMA_CONTIGUOUS=y
CONFIG_GENERIC_SMP_IDLE_THREAD=y
CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
CONFIG_ARCH_HAS_SET_MEMORY=y
CONFIG_ARCH_HAS_SET_DIRECT_MAP=y
CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT=y
CONFIG_ARCH_WANTS_NO_INSTR=y
CONFIG_HAVE_ASM_MODVERSIONS=y
CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
CONFIG_HAVE_RSEQ=y
CONFIG_HAVE_RUST=y
CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=y
CONFIG_HAVE_HW_BREAKPOINT=y
CONFIG_HAVE_MIXED_BREAKPOINTS_REGS=y
CONFIG_HAVE_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_PERF_EVENTS_NMI=y
CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HAVE_PERF_REGS=y
CONFIG_HAVE_PERF_USER_STACK_DUMP=y
CONFIG_HAVE_ARCH_JUMP_LABEL=y
CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=y
CONFIG_MMU_GATHER_TABLE_FREE=y
CONFIG_MMU_GATHER_RCU_TABLE_FREE=y
CONFIG_MMU_GATHER_MERGE_VMAS=y
CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=y
CONFIG_ARCH_HAS_NMI_SAFE_THIS_CPU_OPS=y
CONFIG_HAVE_ALIGNED_STRUCT_PAGE=y
CONFIG_HAVE_CMPXCHG_LOCAL=y
CONFIG_HAVE_CMPXCHG_DOUBLE=y
CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
CONFIG_HAVE_ARCH_SECCOMP=y
CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
CONFIG_SECCOMP=y
CONFIG_SECCOMP_FILTER=y
# CONFIG_SECCOMP_CACHE_DEBUG is not set
CONFIG_HAVE_ARCH_STACKLEAK=y
CONFIG_HAVE_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR_STRONG=y
CONFIG_ARCH_SUPPORTS_LTO_CLANG=y
CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN=y
CONFIG_LTO_NONE=y
CONFIG_ARCH_SUPPORTS_CFI_CLANG=y
CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES=y
CONFIG_HAVE_CONTEXT_TRACKING_USER=y
CONFIG_HAVE_CONTEXT_TRACKING_USER_OFFSTACK=y
CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_MOVE_PUD=y
CONFIG_HAVE_MOVE_PMD=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
CONFIG_HAVE_ARCH_HUGE_VMAP=y
CONFIG_HAVE_ARCH_HUGE_VMALLOC=y
CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
CONFIG_HAVE_ARCH_SOFT_DIRTY=y
CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
CONFIG_MODULES_USE_ELF_RELA=y
CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK=y
CONFIG_SOFTIRQ_ON_OWN_STACK=y
CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
CONFIG_HAVE_EXIT_THREAD=y
CONFIG_ARCH_MMAP_RND_BITS=28
CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES=y
CONFIG_PAGE_SIZE_LESS_THAN_64KB=y
CONFIG_PAGE_SIZE_LESS_THAN_256KB=y
CONFIG_HAVE_OBJTOOL=y
CONFIG_HAVE_JUMP_LABEL_HACK=y
CONFIG_HAVE_NOINSTR_HACK=y
CONFIG_HAVE_NOINSTR_VALIDATION=y
CONFIG_HAVE_UACCESS_VALIDATION=y
CONFIG_HAVE_STACK_VALIDATION=y
CONFIG_HAVE_RELIABLE_STACKTRACE=y
CONFIG_OLD_SIGSUSPEND3=y
CONFIG_COMPAT_OLD_SIGACTION=y
CONFIG_COMPAT_32BIT_TIME=y
CONFIG_HAVE_ARCH_VMAP_STACK=y
CONFIG_VMAP_STACK=y
CONFIG_HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET=y
CONFIG_RANDOMIZE_KSTACK_OFFSET=y
# CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT is not set
CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
CONFIG_STRICT_KERNEL_RWX=y
CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
CONFIG_STRICT_MODULE_RWX=y
CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y
CONFIG_ARCH_USE_MEMREMAP_PROT=y
# CONFIG_LOCK_EVENT_COUNTS is not set
CONFIG_ARCH_HAS_MEM_ENCRYPT=y
CONFIG_ARCH_HAS_CC_PLATFORM=y
CONFIG_HAVE_STATIC_CALL=y
CONFIG_HAVE_STATIC_CALL_INLINE=y
CONFIG_HAVE_PREEMPT_DYNAMIC=y
CONFIG_HAVE_PREEMPT_DYNAMIC_CALL=y
CONFIG_ARCH_WANT_LD_ORPHAN_WARN=y
CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
CONFIG_ARCH_SUPPORTS_PAGE_TABLE_CHECK=y
CONFIG_ARCH_HAS_ELFCORE_COMPAT=y
CONFIG_ARCH_HAS_PARANOID_L1D_FLUSH=y
CONFIG_DYNAMIC_SIGFRAME=y
CONFIG_ARCH_HAS_NONLEAF_PMD_YOUNG=y

#
# GCOV-based kernel profiling
#
# CONFIG_GCOV_KERNEL is not set
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
# end of GCOV-based kernel profiling

CONFIG_HAVE_GCC_PLUGINS=y
CONFIG_GCC_PLUGINS=y
# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
CONFIG_FUNCTION_ALIGNMENT_4B=y
CONFIG_FUNCTION_ALIGNMENT_16B=y
CONFIG_FUNCTION_ALIGNMENT=16
# end of General architecture-dependent options

CONFIG_RT_MUTEXES=y
CONFIG_BASE_SMALL=0
CONFIG_MODULE_SIG_FORMAT=y
CONFIG_MODULES=y
CONFIG_MODULE_FORCE_LOAD=y
CONFIG_MODULE_UNLOAD=y
# CONFIG_MODULE_FORCE_UNLOAD is not set
# CONFIG_MODULE_UNLOAD_TAINT_TRACKING is not set
# CONFIG_MODVERSIONS is not set
# CONFIG_MODULE_SRCVERSION_ALL is not set
CONFIG_MODULE_SIG=y
# CONFIG_MODULE_SIG_FORCE is not set
CONFIG_MODULE_SIG_ALL=y
# CONFIG_MODULE_SIG_SHA1 is not set
# CONFIG_MODULE_SIG_SHA224 is not set
CONFIG_MODULE_SIG_SHA256=y
# CONFIG_MODULE_SIG_SHA384 is not set
# CONFIG_MODULE_SIG_SHA512 is not set
CONFIG_MODULE_SIG_HASH="sha256"
CONFIG_MODULE_COMPRESS_NONE=y
# CONFIG_MODULE_COMPRESS_GZIP is not set
# CONFIG_MODULE_COMPRESS_XZ is not set
# CONFIG_MODULE_COMPRESS_ZSTD is not set
# CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
CONFIG_MODPROBE_PATH="/sbin/modprobe"
# CONFIG_TRIM_UNUSED_KSYMS is not set
CONFIG_MODULES_TREE_LOOKUP=y
CONFIG_BLOCK=y
CONFIG_BLOCK_LEGACY_AUTOLOAD=y
CONFIG_BLK_CGROUP_RWSTAT=y
CONFIG_BLK_DEV_BSG_COMMON=y
CONFIG_BLK_ICQ=y
CONFIG_BLK_DEV_BSGLIB=y
CONFIG_BLK_DEV_INTEGRITY=y
CONFIG_BLK_DEV_INTEGRITY_T10=m
CONFIG_BLK_DEV_ZONED=y
CONFIG_BLK_DEV_THROTTLING=y
# CONFIG_BLK_DEV_THROTTLING_LOW is not set
CONFIG_BLK_WBT=y
CONFIG_BLK_WBT_MQ=y
# CONFIG_BLK_CGROUP_IOLATENCY is not set
# CONFIG_BLK_CGROUP_IOCOST is not set
# CONFIG_BLK_CGROUP_IOPRIO is not set
CONFIG_BLK_DEBUG_FS=y
CONFIG_BLK_DEBUG_FS_ZONED=y
# CONFIG_BLK_SED_OPAL is not set
# CONFIG_BLK_INLINE_ENCRYPTION is not set

#
# Partition Types
#
# CONFIG_PARTITION_ADVANCED is not set
CONFIG_MSDOS_PARTITION=y
CONFIG_EFI_PARTITION=y
# end of Partition Types

CONFIG_BLOCK_COMPAT=y
CONFIG_BLK_MQ_PCI=y
CONFIG_BLK_MQ_VIRTIO=y
CONFIG_BLK_MQ_RDMA=y
CONFIG_BLK_PM=y
CONFIG_BLOCK_HOLDER_DEPRECATED=y
CONFIG_BLK_MQ_STACKING=y

#
# IO Schedulers
#
CONFIG_MQ_IOSCHED_DEADLINE=y
CONFIG_MQ_IOSCHED_KYBER=y
CONFIG_IOSCHED_BFQ=y
CONFIG_BFQ_GROUP_IOSCHED=y
# CONFIG_BFQ_CGROUP_DEBUG is not set
# end of IO Schedulers

CONFIG_PREEMPT_NOTIFIERS=y
CONFIG_PADATA=y
CONFIG_ASN1=y
CONFIG_INLINE_SPIN_UNLOCK_IRQ=y
CONFIG_INLINE_READ_UNLOCK=y
CONFIG_INLINE_READ_UNLOCK_IRQ=y
CONFIG_INLINE_WRITE_UNLOCK=y
CONFIG_INLINE_WRITE_UNLOCK_IRQ=y
CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
CONFIG_MUTEX_SPIN_ON_OWNER=y
CONFIG_RWSEM_SPIN_ON_OWNER=y
CONFIG_LOCK_SPIN_ON_OWNER=y
CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
CONFIG_QUEUED_SPINLOCKS=y
CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
CONFIG_QUEUED_RWLOCKS=y
CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=y
CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=y
CONFIG_ARCH_HAS_SYSCALL_WRAPPER=y
CONFIG_FREEZER=y

#
# Executable file formats
#
CONFIG_BINFMT_ELF=y
CONFIG_COMPAT_BINFMT_ELF=y
CONFIG_ELFCORE=y
CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y
CONFIG_BINFMT_SCRIPT=y
CONFIG_BINFMT_MISC=m
CONFIG_COREDUMP=y
# end of Executable file formats

#
# Memory Management options
#
CONFIG_ZPOOL=y
CONFIG_SWAP=y
CONFIG_ZSWAP=y
# CONFIG_ZSWAP_DEFAULT_ON is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_DEFLATE is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZO=y
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_842 is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4 is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4HC is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT="lzo"
CONFIG_ZSWAP_ZPOOL_DEFAULT_ZBUD=y
# CONFIG_ZSWAP_ZPOOL_DEFAULT_Z3FOLD is not set
# CONFIG_ZSWAP_ZPOOL_DEFAULT_ZSMALLOC is not set
CONFIG_ZSWAP_ZPOOL_DEFAULT="zbud"
CONFIG_ZBUD=y
# CONFIG_Z3FOLD is not set
CONFIG_ZSMALLOC=y
CONFIG_ZSMALLOC_STAT=y

#
# SLAB allocator options
#
# CONFIG_SLAB is not set
CONFIG_SLUB=y
# CONFIG_SLOB_DEPRECATED is not set
# CONFIG_SLUB_TINY is not set
CONFIG_SLAB_MERGE_DEFAULT=y
CONFIG_SLAB_FREELIST_RANDOM=y
# CONFIG_SLAB_FREELIST_HARDENED is not set
# CONFIG_SLUB_STATS is not set
CONFIG_SLUB_CPU_PARTIAL=y
# end of SLAB allocator options

CONFIG_SHUFFLE_PAGE_ALLOCATOR=y
# CONFIG_COMPAT_BRK is not set
CONFIG_SPARSEMEM=y
CONFIG_SPARSEMEM_EXTREME=y
CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
CONFIG_SPARSEMEM_VMEMMAP=y
CONFIG_HAVE_FAST_GUP=y
CONFIG_NUMA_KEEP_MEMINFO=y
CONFIG_MEMORY_ISOLATION=y
CONFIG_EXCLUSIVE_SYSTEM_RAM=y
CONFIG_HAVE_BOOTMEM_INFO_NODE=y
CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=y
CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE=y
CONFIG_MEMORY_HOTPLUG=y
# CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE is not set
CONFIG_MEMORY_HOTREMOVE=y
CONFIG_MHP_MEMMAP_ON_MEMORY=y
CONFIG_SPLIT_PTLOCK_CPUS=4
CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=y
CONFIG_MEMORY_BALLOON=y
CONFIG_BALLOON_COMPACTION=y
CONFIG_COMPACTION=y
CONFIG_COMPACT_UNEVICTABLE_DEFAULT=1
CONFIG_PAGE_REPORTING=y
CONFIG_MIGRATION=y
CONFIG_DEVICE_MIGRATION=y
CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
CONFIG_ARCH_ENABLE_THP_MIGRATION=y
CONFIG_CONTIG_ALLOC=y
CONFIG_PHYS_ADDR_T_64BIT=y
CONFIG_MMU_NOTIFIER=y
CONFIG_KSM=y
CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
CONFIG_ARCH_SUPPORTS_MEMORY_FAILURE=y
CONFIG_MEMORY_FAILURE=y
CONFIG_HWPOISON_INJECT=m
CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
CONFIG_ARCH_WANTS_THP_SWAP=y
CONFIG_TRANSPARENT_HUGEPAGE=y
CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
CONFIG_THP_SWAP=y
# CONFIG_READ_ONLY_THP_FOR_FS is not set
CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=y
CONFIG_USE_PERCPU_NUMA_NODE_ID=y
CONFIG_HAVE_SETUP_PER_CPU_AREA=y
CONFIG_FRONTSWAP=y
CONFIG_CMA=y
# CONFIG_CMA_DEBUG is not set
# CONFIG_CMA_DEBUGFS is not set
# CONFIG_CMA_SYSFS is not set
CONFIG_CMA_AREAS=19
# CONFIG_MEM_SOFT_DIRTY is not set
CONFIG_GENERIC_EARLY_IOREMAP=y
CONFIG_DEFERRED_STRUCT_PAGE_INIT=y
CONFIG_PAGE_IDLE_FLAG=y
CONFIG_IDLE_PAGE_TRACKING=y
CONFIG_ARCH_HAS_CACHE_LINE_SIZE=y
CONFIG_ARCH_HAS_CURRENT_STACK_POINTER=y
CONFIG_ARCH_HAS_PTE_DEVMAP=y
CONFIG_ARCH_HAS_ZONE_DMA_SET=y
CONFIG_ZONE_DMA=y
CONFIG_ZONE_DMA32=y
CONFIG_ZONE_DEVICE=y
CONFIG_HMM_MIRROR=y
CONFIG_GET_FREE_REGION=y
CONFIG_DEVICE_PRIVATE=y
CONFIG_VMAP_PFN=y
CONFIG_ARCH_USES_HIGH_VMA_FLAGS=y
CONFIG_ARCH_HAS_PKEYS=y
CONFIG_VM_EVENT_COUNTERS=y
# CONFIG_PERCPU_STATS is not set
# CONFIG_GUP_TEST is not set
CONFIG_ARCH_HAS_PTE_SPECIAL=y
CONFIG_SECRETMEM=y
# CONFIG_ANON_VMA_NAME is not set
# CONFIG_USERFAULTFD is not set
# CONFIG_LRU_GEN is not set

#
# Data Access Monitoring
#
# CONFIG_DAMON is not set
# end of Data Access Monitoring
# end of Memory Management options

CONFIG_NET=y
CONFIG_COMPAT_NETLINK_MESSAGES=y
CONFIG_NET_INGRESS=y
CONFIG_NET_EGRESS=y
CONFIG_SKB_EXTENSIONS=y

#
# Networking options
#
CONFIG_PACKET=y
CONFIG_PACKET_DIAG=m
CONFIG_UNIX=y
CONFIG_UNIX_SCM=y
CONFIG_AF_UNIX_OOB=y
CONFIG_UNIX_DIAG=m
CONFIG_TLS=m
CONFIG_TLS_DEVICE=y
# CONFIG_TLS_TOE is not set
CONFIG_XFRM=y
CONFIG_XFRM_OFFLOAD=y
CONFIG_XFRM_ALGO=y
CONFIG_XFRM_USER=y
# CONFIG_XFRM_USER_COMPAT is not set
# CONFIG_XFRM_INTERFACE is not set
CONFIG_XFRM_SUB_POLICY=y
CONFIG_XFRM_MIGRATE=y
CONFIG_XFRM_STATISTICS=y
CONFIG_XFRM_AH=m
CONFIG_XFRM_ESP=m
CONFIG_XFRM_IPCOMP=m
CONFIG_NET_KEY=m
CONFIG_NET_KEY_MIGRATE=y
# CONFIG_SMC is not set
CONFIG_XDP_SOCKETS=y
# CONFIG_XDP_SOCKETS_DIAG is not set
CONFIG_INET=y
CONFIG_IP_MULTICAST=y
CONFIG_IP_ADVANCED_ROUTER=y
CONFIG_IP_FIB_TRIE_STATS=y
CONFIG_IP_MULTIPLE_TABLES=y
CONFIG_IP_ROUTE_MULTIPATH=y
CONFIG_IP_ROUTE_VERBOSE=y
CONFIG_IP_ROUTE_CLASSID=y
CONFIG_IP_PNP=y
CONFIG_IP_PNP_DHCP=y
# CONFIG_IP_PNP_BOOTP is not set
# CONFIG_IP_PNP_RARP is not set
CONFIG_NET_IPIP=m
CONFIG_NET_IPGRE_DEMUX=m
CONFIG_NET_IP_TUNNEL=m
CONFIG_NET_IPGRE=m
CONFIG_NET_IPGRE_BROADCAST=y
CONFIG_IP_MROUTE_COMMON=y
CONFIG_IP_MROUTE=y
CONFIG_IP_MROUTE_MULTIPLE_TABLES=y
CONFIG_IP_PIMSM_V1=y
CONFIG_IP_PIMSM_V2=y
CONFIG_SYN_COOKIES=y
CONFIG_NET_IPVTI=m
CONFIG_NET_UDP_TUNNEL=m
# CONFIG_NET_FOU is not set
# CONFIG_NET_FOU_IP_TUNNELS is not set
CONFIG_INET_AH=m
CONFIG_INET_ESP=m
CONFIG_INET_ESP_OFFLOAD=m
# CONFIG_INET_ESPINTCP is not set
CONFIG_INET_IPCOMP=m
CONFIG_INET_TABLE_PERTURB_ORDER=16
CONFIG_INET_XFRM_TUNNEL=m
CONFIG_INET_TUNNEL=m
CONFIG_INET_DIAG=m
CONFIG_INET_TCP_DIAG=m
CONFIG_INET_UDP_DIAG=m
CONFIG_INET_RAW_DIAG=m
# CONFIG_INET_DIAG_DESTROY is not set
CONFIG_TCP_CONG_ADVANCED=y
CONFIG_TCP_CONG_BIC=m
CONFIG_TCP_CONG_CUBIC=y
CONFIG_TCP_CONG_WESTWOOD=m
CONFIG_TCP_CONG_HTCP=m
CONFIG_TCP_CONG_HSTCP=m
CONFIG_TCP_CONG_HYBLA=m
CONFIG_TCP_CONG_VEGAS=m
CONFIG_TCP_CONG_NV=m
CONFIG_TCP_CONG_SCALABLE=m
CONFIG_TCP_CONG_LP=m
CONFIG_TCP_CONG_VENO=m
CONFIG_TCP_CONG_YEAH=m
CONFIG_TCP_CONG_ILLINOIS=m
CONFIG_TCP_CONG_DCTCP=m
# CONFIG_TCP_CONG_CDG is not set
CONFIG_TCP_CONG_BBR=m
CONFIG_DEFAULT_CUBIC=y
# CONFIG_DEFAULT_RENO is not set
CONFIG_DEFAULT_TCP_CONG="cubic"
CONFIG_TCP_MD5SIG=y
CONFIG_IPV6=y
CONFIG_IPV6_ROUTER_PREF=y
CONFIG_IPV6_ROUTE_INFO=y
CONFIG_IPV6_OPTIMISTIC_DAD=y
CONFIG_INET6_AH=m
CONFIG_INET6_ESP=m
CONFIG_INET6_ESP_OFFLOAD=m
# CONFIG_INET6_ESPINTCP is not set
CONFIG_INET6_IPCOMP=m
CONFIG_IPV6_MIP6=m
# CONFIG_IPV6_ILA is not set
CONFIG_INET6_XFRM_TUNNEL=m
CONFIG_INET6_TUNNEL=m
CONFIG_IPV6_VTI=m
CONFIG_IPV6_SIT=m
CONFIG_IPV6_SIT_6RD=y
CONFIG_IPV6_NDISC_NODETYPE=y
CONFIG_IPV6_TUNNEL=m
CONFIG_IPV6_GRE=m
CONFIG_IPV6_MULTIPLE_TABLES=y
# CONFIG_IPV6_SUBTREES is not set
CONFIG_IPV6_MROUTE=y
CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=y
CONFIG_IPV6_PIMSM_V2=y
# CONFIG_IPV6_SEG6_LWTUNNEL is not set
# CONFIG_IPV6_SEG6_HMAC is not set
# CONFIG_IPV6_RPL_LWTUNNEL is not set
# CONFIG_IPV6_IOAM6_LWTUNNEL is not set
CONFIG_NETLABEL=y
# CONFIG_MPTCP is not set
CONFIG_NETWORK_SECMARK=y
CONFIG_NET_PTP_CLASSIFY=y
CONFIG_NETWORK_PHY_TIMESTAMPING=y
CONFIG_NETFILTER=y
CONFIG_NETFILTER_ADVANCED=y
CONFIG_BRIDGE_NETFILTER=m

#
# Core Netfilter Configuration
#
CONFIG_NETFILTER_INGRESS=y
CONFIG_NETFILTER_EGRESS=y
CONFIG_NETFILTER_SKIP_EGRESS=y
CONFIG_NETFILTER_NETLINK=m
CONFIG_NETFILTER_FAMILY_BRIDGE=y
CONFIG_NETFILTER_FAMILY_ARP=y
# CONFIG_NETFILTER_NETLINK_HOOK is not set
# CONFIG_NETFILTER_NETLINK_ACCT is not set
CONFIG_NETFILTER_NETLINK_QUEUE=m
CONFIG_NETFILTER_NETLINK_LOG=m
CONFIG_NETFILTER_NETLINK_OSF=m
CONFIG_NF_CONNTRACK=m
CONFIG_NF_LOG_SYSLOG=m
CONFIG_NETFILTER_CONNCOUNT=m
CONFIG_NF_CONNTRACK_MARK=y
CONFIG_NF_CONNTRACK_SECMARK=y
CONFIG_NF_CONNTRACK_ZONES=y
CONFIG_NF_CONNTRACK_PROCFS=y
CONFIG_NF_CONNTRACK_EVENTS=y
CONFIG_NF_CONNTRACK_TIMEOUT=y
CONFIG_NF_CONNTRACK_TIMESTAMP=y
CONFIG_NF_CONNTRACK_LABELS=y
CONFIG_NF_CT_PROTO_DCCP=y
CONFIG_NF_CT_PROTO_GRE=y
CONFIG_NF_CT_PROTO_SCTP=y
CONFIG_NF_CT_PROTO_UDPLITE=y
CONFIG_NF_CONNTRACK_AMANDA=m
CONFIG_NF_CONNTRACK_FTP=m
CONFIG_NF_CONNTRACK_H323=m
CONFIG_NF_CONNTRACK_IRC=m
CONFIG_NF_CONNTRACK_BROADCAST=m
CONFIG_NF_CONNTRACK_NETBIOS_NS=m
CONFIG_NF_CONNTRACK_SNMP=m
CONFIG_NF_CONNTRACK_PPTP=m
CONFIG_NF_CONNTRACK_SANE=m
CONFIG_NF_CONNTRACK_SIP=m
CONFIG_NF_CONNTRACK_TFTP=m
CONFIG_NF_CT_NETLINK=m
CONFIG_NF_CT_NETLINK_TIMEOUT=m
CONFIG_NF_CT_NETLINK_HELPER=m
CONFIG_NETFILTER_NETLINK_GLUE_CT=y
CONFIG_NF_NAT=m
CONFIG_NF_NAT_AMANDA=m
CONFIG_NF_NAT_FTP=m
CONFIG_NF_NAT_IRC=m
CONFIG_NF_NAT_SIP=m
CONFIG_NF_NAT_TFTP=m
CONFIG_NF_NAT_REDIRECT=y
CONFIG_NF_NAT_MASQUERADE=y
CONFIG_NF_NAT_OVS=y
CONFIG_NETFILTER_SYNPROXY=m
CONFIG_NF_TABLES=m
CONFIG_NF_TABLES_INET=y
CONFIG_NF_TABLES_NETDEV=y
CONFIG_NFT_NUMGEN=m
CONFIG_NFT_CT=m
CONFIG_NFT_CONNLIMIT=m
CONFIG_NFT_LOG=m
CONFIG_NFT_LIMIT=m
CONFIG_NFT_MASQ=m
CONFIG_NFT_REDIR=m
CONFIG_NFT_NAT=m
# CONFIG_NFT_TUNNEL is not set
CONFIG_NFT_QUEUE=m
CONFIG_NFT_QUOTA=m
CONFIG_NFT_REJECT=m
CONFIG_NFT_REJECT_INET=m
CONFIG_NFT_COMPAT=m
CONFIG_NFT_HASH=m
CONFIG_NFT_FIB=m
CONFIG_NFT_FIB_INET=m
# CONFIG_NFT_XFRM is not set
CONFIG_NFT_SOCKET=m
# CONFIG_NFT_OSF is not set
# CONFIG_NFT_TPROXY is not set
# CONFIG_NFT_SYNPROXY is not set
CONFIG_NF_DUP_NETDEV=m
CONFIG_NFT_DUP_NETDEV=m
CONFIG_NFT_FWD_NETDEV=m
CONFIG_NFT_FIB_NETDEV=m
# CONFIG_NFT_REJECT_NETDEV is not set
# CONFIG_NF_FLOW_TABLE is not set
CONFIG_NETFILTER_XTABLES=y
CONFIG_NETFILTER_XTABLES_COMPAT=y

#
# Xtables combined modules
#
CONFIG_NETFILTER_XT_MARK=m
CONFIG_NETFILTER_XT_CONNMARK=m
CONFIG_NETFILTER_XT_SET=m

#
# Xtables targets
#
CONFIG_NETFILTER_XT_TARGET_AUDIT=m
CONFIG_NETFILTER_XT_TARGET_CHECKSUM=m
CONFIG_NETFILTER_XT_TARGET_CLASSIFY=m
CONFIG_NETFILTER_XT_TARGET_CONNMARK=m
CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=m
CONFIG_NETFILTER_XT_TARGET_CT=m
CONFIG_NETFILTER_XT_TARGET_DSCP=m
CONFIG_NETFILTER_XT_TARGET_HL=m
CONFIG_NETFILTER_XT_TARGET_HMARK=m
CONFIG_NETFILTER_XT_TARGET_IDLETIMER=m
# CONFIG_NETFILTER_XT_TARGET_LED is not set
CONFIG_NETFILTER_XT_TARGET_LOG=m
CONFIG_NETFILTER_XT_TARGET_MARK=m
CONFIG_NETFILTER_XT_NAT=m
CONFIG_NETFILTER_XT_TARGET_NETMAP=m
CONFIG_NETFILTER_XT_TARGET_NFLOG=m
CONFIG_NETFILTER_XT_TARGET_NFQUEUE=m
CONFIG_NETFILTER_XT_TARGET_NOTRACK=m
CONFIG_NETFILTER_XT_TARGET_RATEEST=m
CONFIG_NETFILTER_XT_TARGET_REDIRECT=m
CONFIG_NETFILTER_XT_TARGET_MASQUERADE=m
CONFIG_NETFILTER_XT_TARGET_TEE=m
CONFIG_NETFILTER_XT_TARGET_TPROXY=m
CONFIG_NETFILTER_XT_TARGET_TRACE=m
CONFIG_NETFILTER_XT_TARGET_SECMARK=m
CONFIG_NETFILTER_XT_TARGET_TCPMSS=m
CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=m

#
# Xtables matches
#
CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
CONFIG_NETFILTER_XT_MATCH_BPF=m
CONFIG_NETFILTER_XT_MATCH_CGROUP=m
CONFIG_NETFILTER_XT_MATCH_CLUSTER=m
CONFIG_NETFILTER_XT_MATCH_COMMENT=m
CONFIG_NETFILTER_XT_MATCH_CONNBYTES=m
CONFIG_NETFILTER_XT_MATCH_CONNLABEL=m
CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=m
CONFIG_NETFILTER_XT_MATCH_CONNMARK=m
CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
CONFIG_NETFILTER_XT_MATCH_CPU=m
CONFIG_NETFILTER_XT_MATCH_DCCP=m
CONFIG_NETFILTER_XT_MATCH_DEVGROUP=m
CONFIG_NETFILTER_XT_MATCH_DSCP=m
CONFIG_NETFILTER_XT_MATCH_ECN=m
CONFIG_NETFILTER_XT_MATCH_ESP=m
CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=m
CONFIG_NETFILTER_XT_MATCH_HELPER=m
CONFIG_NETFILTER_XT_MATCH_HL=m
# CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set
CONFIG_NETFILTER_XT_MATCH_IPRANGE=m
CONFIG_NETFILTER_XT_MATCH_IPVS=m
# CONFIG_NETFILTER_XT_MATCH_L2TP is not set
CONFIG_NETFILTER_XT_MATCH_LENGTH=m
CONFIG_NETFILTER_XT_MATCH_LIMIT=m
CONFIG_NETFILTER_XT_MATCH_MAC=m
CONFIG_NETFILTER_XT_MATCH_MARK=m
CONFIG_NETFILTER_XT_MATCH_MULTIPORT=m
# CONFIG_NETFILTER_XT_MATCH_NFACCT is not set
CONFIG_NETFILTER_XT_MATCH_OSF=m
CONFIG_NETFILTER_XT_MATCH_OWNER=m
CONFIG_NETFILTER_XT_MATCH_POLICY=m
CONFIG_NETFILTER_XT_MATCH_PHYSDEV=m
CONFIG_NETFILTER_XT_MATCH_PKTTYPE=m
CONFIG_NETFILTER_XT_MATCH_QUOTA=m
CONFIG_NETFILTER_XT_MATCH_RATEEST=m
CONFIG_NETFILTER_XT_MATCH_REALM=m
CONFIG_NETFILTER_XT_MATCH_RECENT=m
CONFIG_NETFILTER_XT_MATCH_SCTP=m
CONFIG_NETFILTER_XT_MATCH_SOCKET=m
CONFIG_NETFILTER_XT_MATCH_STATE=m
CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
CONFIG_NETFILTER_XT_MATCH_STRING=m
CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
# CONFIG_NETFILTER_XT_MATCH_TIME is not set
# CONFIG_NETFILTER_XT_MATCH_U32 is not set
# end of Core Netfilter Configuration

CONFIG_IP_SET=m
CONFIG_IP_SET_MAX=256
CONFIG_IP_SET_BITMAP_IP=m
CONFIG_IP_SET_BITMAP_IPMAC=m
CONFIG_IP_SET_BITMAP_PORT=m
CONFIG_IP_SET_HASH_IP=m
CONFIG_IP_SET_HASH_IPMARK=m
CONFIG_IP_SET_HASH_IPPORT=m
CONFIG_IP_SET_HASH_IPPORTIP=m
CONFIG_IP_SET_HASH_IPPORTNET=m
CONFIG_IP_SET_HASH_IPMAC=m
CONFIG_IP_SET_HASH_MAC=m
CONFIG_IP_SET_HASH_NETPORTNET=m
CONFIG_IP_SET_HASH_NET=m
CONFIG_IP_SET_HASH_NETNET=m
CONFIG_IP_SET_HASH_NETPORT=m
CONFIG_IP_SET_HASH_NETIFACE=m
CONFIG_IP_SET_LIST_SET=m
CONFIG_IP_VS=m
CONFIG_IP_VS_IPV6=y
# CONFIG_IP_VS_DEBUG is not set
CONFIG_IP_VS_TAB_BITS=12

#
# IPVS transport protocol load balancing support
#
CONFIG_IP_VS_PROTO_TCP=y
CONFIG_IP_VS_PROTO_UDP=y
CONFIG_IP_VS_PROTO_AH_ESP=y
CONFIG_IP_VS_PROTO_ESP=y
CONFIG_IP_VS_PROTO_AH=y
CONFIG_IP_VS_PROTO_SCTP=y

#
# IPVS scheduler
#
CONFIG_IP_VS_RR=m
CONFIG_IP_VS_WRR=m
CONFIG_IP_VS_LC=m
CONFIG_IP_VS_WLC=m
CONFIG_IP_VS_FO=m
CONFIG_IP_VS_OVF=m
CONFIG_IP_VS_LBLC=m
CONFIG_IP_VS_LBLCR=m
CONFIG_IP_VS_DH=m
CONFIG_IP_VS_SH=m
# CONFIG_IP_VS_MH is not set
CONFIG_IP_VS_SED=m
CONFIG_IP_VS_NQ=m
# CONFIG_IP_VS_TWOS is not set

#
# IPVS SH scheduler
#
CONFIG_IP_VS_SH_TAB_BITS=8

#
# IPVS MH scheduler
#
CONFIG_IP_VS_MH_TAB_INDEX=12

#
# IPVS application helper
#
CONFIG_IP_VS_FTP=m
CONFIG_IP_VS_NFCT=y
CONFIG_IP_VS_PE_SIP=m

#
# IP: Netfilter Configuration
#
CONFIG_NF_DEFRAG_IPV4=m
CONFIG_NF_SOCKET_IPV4=m
CONFIG_NF_TPROXY_IPV4=m
CONFIG_NF_TABLES_IPV4=y
CONFIG_NFT_REJECT_IPV4=m
CONFIG_NFT_DUP_IPV4=m
CONFIG_NFT_FIB_IPV4=m
CONFIG_NF_TABLES_ARP=y
CONFIG_NF_DUP_IPV4=m
CONFIG_NF_LOG_ARP=m
CONFIG_NF_LOG_IPV4=m
CONFIG_NF_REJECT_IPV4=m
CONFIG_NF_NAT_SNMP_BASIC=m
CONFIG_NF_NAT_PPTP=m
CONFIG_NF_NAT_H323=m
CONFIG_IP_NF_IPTABLES=m
CONFIG_IP_NF_MATCH_AH=m
CONFIG_IP_NF_MATCH_ECN=m
CONFIG_IP_NF_MATCH_RPFILTER=m
CONFIG_IP_NF_MATCH_TTL=m
CONFIG_IP_NF_FILTER=m
CONFIG_IP_NF_TARGET_REJECT=m
CONFIG_IP_NF_TARGET_SYNPROXY=m
CONFIG_IP_NF_NAT=m
CONFIG_IP_NF_TARGET_MASQUERADE=m
CONFIG_IP_NF_TARGET_NETMAP=m
CONFIG_IP_NF_TARGET_REDIRECT=m
CONFIG_IP_NF_MANGLE=m
# CONFIG_IP_NF_TARGET_CLUSTERIP is not set
CONFIG_IP_NF_TARGET_ECN=m
CONFIG_IP_NF_TARGET_TTL=m
CONFIG_IP_NF_RAW=m
CONFIG_IP_NF_SECURITY=m
CONFIG_IP_NF_ARPTABLES=m
CONFIG_IP_NF_ARPFILTER=m
CONFIG_IP_NF_ARP_MANGLE=m
# end of IP: Netfilter Configuration

#
# IPv6: Netfilter Configuration
#
CONFIG_NF_SOCKET_IPV6=m
CONFIG_NF_TPROXY_IPV6=m
CONFIG_NF_TABLES_IPV6=y
CONFIG_NFT_REJECT_IPV6=m
CONFIG_NFT_DUP_IPV6=m
CONFIG_NFT_FIB_IPV6=m
CONFIG_NF_DUP_IPV6=m
CONFIG_NF_REJECT_IPV6=m
CONFIG_NF_LOG_IPV6=m
CONFIG_IP6_NF_IPTABLES=m
CONFIG_IP6_NF_MATCH_AH=m
CONFIG_IP6_NF_MATCH_EUI64=m
CONFIG_IP6_NF_MATCH_FRAG=m
CONFIG_IP6_NF_MATCH_OPTS=m
CONFIG_IP6_NF_MATCH_HL=m
CONFIG_IP6_NF_MATCH_IPV6HEADER=m
CONFIG_IP6_NF_MATCH_MH=m
CONFIG_IP6_NF_MATCH_RPFILTER=m
CONFIG_IP6_NF_MATCH_RT=m
# CONFIG_IP6_NF_MATCH_SRH is not set
# CONFIG_IP6_NF_TARGET_HL is not set
CONFIG_IP6_NF_FILTER=m
CONFIG_IP6_NF_TARGET_REJECT=m
CONFIG_IP6_NF_TARGET_SYNPROXY=m
CONFIG_IP6_NF_MANGLE=m
CONFIG_IP6_NF_RAW=m
CONFIG_IP6_NF_SECURITY=m
CONFIG_IP6_NF_NAT=m
CONFIG_IP6_NF_TARGET_MASQUERADE=m
CONFIG_IP6_NF_TARGET_NPT=m
# end of IPv6: Netfilter Configuration

CONFIG_NF_DEFRAG_IPV6=m
CONFIG_NF_TABLES_BRIDGE=m
# CONFIG_NFT_BRIDGE_META is not set
CONFIG_NFT_BRIDGE_REJECT=m
# CONFIG_NF_CONNTRACK_BRIDGE is not set
CONFIG_BRIDGE_NF_EBTABLES=m
CONFIG_BRIDGE_EBT_BROUTE=m
CONFIG_BRIDGE_EBT_T_FILTER=m
CONFIG_BRIDGE_EBT_T_NAT=m
CONFIG_BRIDGE_EBT_802_3=m
CONFIG_BRIDGE_EBT_AMONG=m
CONFIG_BRIDGE_EBT_ARP=m
CONFIG_BRIDGE_EBT_IP=m
CONFIG_BRIDGE_EBT_IP6=m
CONFIG_BRIDGE_EBT_LIMIT=m
CONFIG_BRIDGE_EBT_MARK=m
CONFIG_BRIDGE_EBT_PKTTYPE=m
CONFIG_BRIDGE_EBT_STP=m
CONFIG_BRIDGE_EBT_VLAN=m
CONFIG_BRIDGE_EBT_ARPREPLY=m
CONFIG_BRIDGE_EBT_DNAT=m
CONFIG_BRIDGE_EBT_MARK_T=m
CONFIG_BRIDGE_EBT_REDIRECT=m
CONFIG_BRIDGE_EBT_SNAT=m
CONFIG_BRIDGE_EBT_LOG=m
CONFIG_BRIDGE_EBT_NFLOG=m
# CONFIG_BPFILTER is not set
# CONFIG_IP_DCCP is not set
CONFIG_IP_SCTP=m
# CONFIG_SCTP_DBG_OBJCNT is not set
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5 is not set
CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1=y
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE is not set
CONFIG_SCTP_COOKIE_HMAC_MD5=y
CONFIG_SCTP_COOKIE_HMAC_SHA1=y
CONFIG_INET_SCTP_DIAG=m
# CONFIG_RDS is not set
CONFIG_TIPC=m
# CONFIG_TIPC_MEDIA_IB is not set
CONFIG_TIPC_MEDIA_UDP=y
CONFIG_TIPC_CRYPTO=y
CONFIG_TIPC_DIAG=m
CONFIG_ATM=m
CONFIG_ATM_CLIP=m
# CONFIG_ATM_CLIP_NO_ICMP is not set
CONFIG_ATM_LANE=m
# CONFIG_ATM_MPOA is not set
CONFIG_ATM_BR2684=m
# CONFIG_ATM_BR2684_IPFILTER is not set
CONFIG_L2TP=m
CONFIG_L2TP_DEBUGFS=m
CONFIG_L2TP_V3=y
CONFIG_L2TP_IP=m
CONFIG_L2TP_ETH=m
CONFIG_STP=m
CONFIG_GARP=m
CONFIG_MRP=m
CONFIG_BRIDGE=m
CONFIG_BRIDGE_IGMP_SNOOPING=y
CONFIG_BRIDGE_VLAN_FILTERING=y
# CONFIG_BRIDGE_MRP is not set
# CONFIG_BRIDGE_CFM is not set
# CONFIG_NET_DSA is not set
CONFIG_VLAN_8021Q=m
CONFIG_VLAN_8021Q_GVRP=y
CONFIG_VLAN_8021Q_MVRP=y
CONFIG_LLC=m
# CONFIG_LLC2 is not set
# CONFIG_ATALK is not set
# CONFIG_X25 is not set
# CONFIG_LAPB is not set
# CONFIG_PHONET is not set
CONFIG_6LOWPAN=m
# CONFIG_6LOWPAN_DEBUGFS is not set
# CONFIG_6LOWPAN_NHC is not set
# CONFIG_IEEE802154 is not set
CONFIG_NET_SCHED=y

#
# Queueing/Scheduling
#
CONFIG_NET_SCH_CBQ=m
CONFIG_NET_SCH_HTB=m
CONFIG_NET_SCH_HFSC=m
CONFIG_NET_SCH_ATM=m
CONFIG_NET_SCH_PRIO=m
CONFIG_NET_SCH_MULTIQ=m
CONFIG_NET_SCH_RED=m
CONFIG_NET_SCH_SFB=m
CONFIG_NET_SCH_SFQ=m
CONFIG_NET_SCH_TEQL=m
CONFIG_NET_SCH_TBF=m
# CONFIG_NET_SCH_CBS is not set
# CONFIG_NET_SCH_ETF is not set
# CONFIG_NET_SCH_TAPRIO is not set
CONFIG_NET_SCH_GRED=m
CONFIG_NET_SCH_DSMARK=m
CONFIG_NET_SCH_NETEM=m
CONFIG_NET_SCH_DRR=m
CONFIG_NET_SCH_MQPRIO=m
# CONFIG_NET_SCH_SKBPRIO is not set
CONFIG_NET_SCH_CHOKE=m
CONFIG_NET_SCH_QFQ=m
CONFIG_NET_SCH_CODEL=m
CONFIG_NET_SCH_FQ_CODEL=y
# CONFIG_NET_SCH_CAKE is not set
CONFIG_NET_SCH_FQ=m
CONFIG_NET_SCH_HHF=m
CONFIG_NET_SCH_PIE=m
# CONFIG_NET_SCH_FQ_PIE is not set
CONFIG_NET_SCH_INGRESS=m
CONFIG_NET_SCH_PLUG=m
# CONFIG_NET_SCH_ETS is not set
CONFIG_NET_SCH_DEFAULT=y
# CONFIG_DEFAULT_FQ is not set
# CONFIG_DEFAULT_CODEL is not set
CONFIG_DEFAULT_FQ_CODEL=y
# CONFIG_DEFAULT_SFQ is not set
# CONFIG_DEFAULT_PFIFO_FAST is not set
CONFIG_DEFAULT_NET_SCH="fq_codel"

#
# Classification
#
CONFIG_NET_CLS=y
CONFIG_NET_CLS_BASIC=m
CONFIG_NET_CLS_TCINDEX=m
CONFIG_NET_CLS_ROUTE4=m
CONFIG_NET_CLS_FW=m
CONFIG_NET_CLS_U32=m
CONFIG_CLS_U32_PERF=y
CONFIG_CLS_U32_MARK=y
CONFIG_NET_CLS_RSVP=m
CONFIG_NET_CLS_RSVP6=m
CONFIG_NET_CLS_FLOW=m
CONFIG_NET_CLS_CGROUP=y
CONFIG_NET_CLS_BPF=m
CONFIG_NET_CLS_FLOWER=m
CONFIG_NET_CLS_MATCHALL=m
CONFIG_NET_EMATCH=y
CONFIG_NET_EMATCH_STACK=32
CONFIG_NET_EMATCH_CMP=m
CONFIG_NET_EMATCH_NBYTE=m
CONFIG_NET_EMATCH_U32=m
CONFIG_NET_EMATCH_META=m
CONFIG_NET_EMATCH_TEXT=m
# CONFIG_NET_EMATCH_CANID is not set
CONFIG_NET_EMATCH_IPSET=m
# CONFIG_NET_EMATCH_IPT is not set
CONFIG_NET_CLS_ACT=y
CONFIG_NET_ACT_POLICE=m
CONFIG_NET_ACT_GACT=m
CONFIG_GACT_PROB=y
CONFIG_NET_ACT_MIRRED=m
CONFIG_NET_ACT_SAMPLE=m
# CONFIG_NET_ACT_IPT is not set
CONFIG_NET_ACT_NAT=m
CONFIG_NET_ACT_PEDIT=m
CONFIG_NET_ACT_SIMP=m
CONFIG_NET_ACT_SKBEDIT=m
CONFIG_NET_ACT_CSUM=m
# CONFIG_NET_ACT_MPLS is not set
CONFIG_NET_ACT_VLAN=m
CONFIG_NET_ACT_BPF=m
# CONFIG_NET_ACT_CONNMARK is not set
# CONFIG_NET_ACT_CTINFO is not set
CONFIG_NET_ACT_SKBMOD=m
# CONFIG_NET_ACT_IFE is not set
CONFIG_NET_ACT_TUNNEL_KEY=m
# CONFIG_NET_ACT_GATE is not set
# CONFIG_NET_TC_SKB_EXT is not set
CONFIG_NET_SCH_FIFO=y
CONFIG_DCB=y
CONFIG_DNS_RESOLVER=m
# CONFIG_BATMAN_ADV is not set
CONFIG_OPENVSWITCH=m
CONFIG_OPENVSWITCH_GRE=m
CONFIG_VSOCKETS=m
CONFIG_VSOCKETS_DIAG=m
CONFIG_VSOCKETS_LOOPBACK=m
CONFIG_VMWARE_VMCI_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS_COMMON=m
CONFIG_NETLINK_DIAG=m
CONFIG_MPLS=y
CONFIG_NET_MPLS_GSO=y
CONFIG_MPLS_ROUTING=m
CONFIG_MPLS_IPTUNNEL=m
CONFIG_NET_NSH=y
# CONFIG_HSR is not set
CONFIG_NET_SWITCHDEV=y
CONFIG_NET_L3_MASTER_DEV=y
# CONFIG_QRTR is not set
# CONFIG_NET_NCSI is not set
CONFIG_PCPU_DEV_REFCNT=y
CONFIG_RPS=y
CONFIG_RFS_ACCEL=y
CONFIG_SOCK_RX_QUEUE_MAPPING=y
CONFIG_XPS=y
CONFIG_CGROUP_NET_PRIO=y
CONFIG_CGROUP_NET_CLASSID=y
CONFIG_NET_RX_BUSY_POLL=y
CONFIG_BQL=y
CONFIG_NET_FLOW_LIMIT=y

#
# Network testing
#
CONFIG_NET_PKTGEN=m
CONFIG_NET_DROP_MONITOR=y
# end of Network testing
# end of Networking options

# CONFIG_HAMRADIO is not set
CONFIG_CAN=m
CONFIG_CAN_RAW=m
CONFIG_CAN_BCM=m
CONFIG_CAN_GW=m
# CONFIG_CAN_J1939 is not set
# CONFIG_CAN_ISOTP is not set
# CONFIG_BT is not set
# CONFIG_AF_RXRPC is not set
# CONFIG_AF_KCM is not set
CONFIG_STREAM_PARSER=y
# CONFIG_MCTP is not set
CONFIG_FIB_RULES=y
CONFIG_WIRELESS=y
CONFIG_WEXT_CORE=y
CONFIG_WEXT_PROC=y
CONFIG_CFG80211=m
# CONFIG_NL80211_TESTMODE is not set
# CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
# CONFIG_CFG80211_CERTIFICATION_ONUS is not set
CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=y
CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=y
CONFIG_CFG80211_DEFAULT_PS=y
# CONFIG_CFG80211_DEBUGFS is not set
CONFIG_CFG80211_CRDA_SUPPORT=y
CONFIG_CFG80211_WEXT=y
CONFIG_MAC80211=m
CONFIG_MAC80211_HAS_RC=y
CONFIG_MAC80211_RC_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT="minstrel_ht"
CONFIG_MAC80211_MESH=y
CONFIG_MAC80211_LEDS=y
CONFIG_MAC80211_DEBUGFS=y
# CONFIG_MAC80211_MESSAGE_TRACING is not set
# CONFIG_MAC80211_DEBUG_MENU is not set
CONFIG_MAC80211_STA_HASH_MAX_SIZE=0
CONFIG_RFKILL=m
CONFIG_RFKILL_LEDS=y
CONFIG_RFKILL_INPUT=y
# CONFIG_RFKILL_GPIO is not set
CONFIG_NET_9P=y
CONFIG_NET_9P_FD=y
CONFIG_NET_9P_VIRTIO=y
# CONFIG_NET_9P_RDMA is not set
# CONFIG_NET_9P_DEBUG is not set
# CONFIG_CAIF is not set
CONFIG_CEPH_LIB=m
# CONFIG_CEPH_LIB_PRETTYDEBUG is not set
CONFIG_CEPH_LIB_USE_DNS_RESOLVER=y
# CONFIG_NFC is not set
CONFIG_PSAMPLE=m
# CONFIG_NET_IFE is not set
CONFIG_LWTUNNEL=y
CONFIG_LWTUNNEL_BPF=y
CONFIG_DST_CACHE=y
CONFIG_GRO_CELLS=y
CONFIG_SOCK_VALIDATE_XMIT=y
CONFIG_NET_SELFTESTS=y
CONFIG_NET_SOCK_MSG=y
CONFIG_PAGE_POOL=y
# CONFIG_PAGE_POOL_STATS is not set
CONFIG_FAILOVER=m
CONFIG_ETHTOOL_NETLINK=y

#
# Device Drivers
#
CONFIG_HAVE_EISA=y
# CONFIG_EISA is not set
CONFIG_HAVE_PCI=y
CONFIG_PCI=y
CONFIG_PCI_DOMAINS=y
CONFIG_PCIEPORTBUS=y
CONFIG_HOTPLUG_PCI_PCIE=y
CONFIG_PCIEAER=y
CONFIG_PCIEAER_INJECT=m
CONFIG_PCIE_ECRC=y
CONFIG_PCIEASPM=y
CONFIG_PCIEASPM_DEFAULT=y
# CONFIG_PCIEASPM_POWERSAVE is not set
# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
# CONFIG_PCIEASPM_PERFORMANCE is not set
CONFIG_PCIE_PME=y
CONFIG_PCIE_DPC=y
# CONFIG_PCIE_PTM is not set
# CONFIG_PCIE_EDR is not set
CONFIG_PCI_MSI=y
CONFIG_PCI_QUIRKS=y
# CONFIG_PCI_DEBUG is not set
# CONFIG_PCI_REALLOC_ENABLE_AUTO is not set
CONFIG_PCI_STUB=y
CONFIG_PCI_PF_STUB=m
CONFIG_PCI_ATS=y
CONFIG_PCI_LOCKLESS_CONFIG=y
CONFIG_PCI_IOV=y
CONFIG_PCI_PRI=y
CONFIG_PCI_PASID=y
# CONFIG_PCI_P2PDMA is not set
CONFIG_PCI_LABEL=y
# CONFIG_PCIE_BUS_TUNE_OFF is not set
CONFIG_PCIE_BUS_DEFAULT=y
# CONFIG_PCIE_BUS_SAFE is not set
# CONFIG_PCIE_BUS_PERFORMANCE is not set
# CONFIG_PCIE_BUS_PEER2PEER is not set
CONFIG_VGA_ARB=y
CONFIG_VGA_ARB_MAX_GPUS=64
CONFIG_HOTPLUG_PCI=y
CONFIG_HOTPLUG_PCI_ACPI=y
CONFIG_HOTPLUG_PCI_ACPI_IBM=m
# CONFIG_HOTPLUG_PCI_CPCI is not set
CONFIG_HOTPLUG_PCI_SHPC=y

#
# PCI controller drivers
#
CONFIG_VMD=y

#
# DesignWare PCI Core Support
#
# CONFIG_PCIE_DW_PLAT_HOST is not set
# CONFIG_PCI_MESON is not set
# end of DesignWare PCI Core Support

#
# Mobiveil PCIe Core Support
#
# end of Mobiveil PCIe Core Support

#
# Cadence PCIe controllers support
#
# end of Cadence PCIe controllers support
# end of PCI controller drivers

#
# PCI Endpoint
#
# CONFIG_PCI_ENDPOINT is not set
# end of PCI Endpoint

#
# PCI switch controller drivers
#
# CONFIG_PCI_SW_SWITCHTEC is not set
# end of PCI switch controller drivers

# CONFIG_CXL_BUS is not set
# CONFIG_PCCARD is not set
# CONFIG_RAPIDIO is not set

#
# Generic Driver Options
#
CONFIG_AUXILIARY_BUS=y
# CONFIG_UEVENT_HELPER is not set
CONFIG_DEVTMPFS=y
CONFIG_DEVTMPFS_MOUNT=y
# CONFIG_DEVTMPFS_SAFE is not set
CONFIG_STANDALONE=y
CONFIG_PREVENT_FIRMWARE_BUILD=y

#
# Firmware loader
#
CONFIG_FW_LOADER=y
CONFIG_FW_LOADER_PAGED_BUF=y
CONFIG_FW_LOADER_SYSFS=y
CONFIG_EXTRA_FIRMWARE=""
CONFIG_FW_LOADER_USER_HELPER=y
# CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
# CONFIG_FW_LOADER_COMPRESS is not set
CONFIG_FW_CACHE=y
# CONFIG_FW_UPLOAD is not set
# end of Firmware loader

CONFIG_ALLOW_DEV_COREDUMP=y
# CONFIG_DEBUG_DRIVER is not set
# CONFIG_DEBUG_DEVRES is not set
# CONFIG_DEBUG_TEST_DRIVER_REMOVE is not set
# CONFIG_TEST_ASYNC_DRIVER_PROBE is not set
CONFIG_GENERIC_CPU_AUTOPROBE=y
CONFIG_GENERIC_CPU_VULNERABILITIES=y
CONFIG_REGMAP=y
CONFIG_REGMAP_I2C=m
CONFIG_REGMAP_SPI=m
CONFIG_DMA_SHARED_BUFFER=y
# CONFIG_DMA_FENCE_TRACE is not set
# end of Generic Driver Options

#
# Bus devices
#
# CONFIG_MHI_BUS is not set
# CONFIG_MHI_BUS_EP is not set
# end of Bus devices

CONFIG_CONNECTOR=y
CONFIG_PROC_EVENTS=y

#
# Firmware Drivers
#

#
# ARM System Control and Management Interface Protocol
#
# end of ARM System Control and Management Interface Protocol

CONFIG_EDD=m
# CONFIG_EDD_OFF is not set
CONFIG_FIRMWARE_MEMMAP=y
CONFIG_DMIID=y
CONFIG_DMI_SYSFS=y
CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=y
# CONFIG_ISCSI_IBFT is not set
CONFIG_FW_CFG_SYSFS=y
# CONFIG_FW_CFG_SYSFS_CMDLINE is not set
CONFIG_SYSFB=y
# CONFIG_SYSFB_SIMPLEFB is not set
# CONFIG_GOOGLE_FIRMWARE is not set

#
# EFI (Extensible Firmware Interface) Support
#
CONFIG_EFI_ESRT=y
CONFIG_EFI_VARS_PSTORE=y
CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE=y
CONFIG_EFI_DXE_MEM_ATTRIBUTES=y
CONFIG_EFI_RUNTIME_WRAPPERS=y
# CONFIG_EFI_BOOTLOADER_CONTROL is not set
# CONFIG_EFI_CAPSULE_LOADER is not set
# CONFIG_EFI_TEST is not set
# CONFIG_APPLE_PROPERTIES is not set
# CONFIG_RESET_ATTACK_MITIGATION is not set
# CONFIG_EFI_RCI2_TABLE is not set
# CONFIG_EFI_DISABLE_PCI_DMA is not set
CONFIG_EFI_EARLYCON=y
CONFIG_EFI_CUSTOM_SSDT_OVERLAYS=y
# CONFIG_EFI_DISABLE_RUNTIME is not set
# CONFIG_EFI_COCO_SECRET is not set
# end of EFI (Extensible Firmware Interface) Support

CONFIG_UEFI_CPER=y
CONFIG_UEFI_CPER_X86=y

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers

# CONFIG_GNSS is not set
# CONFIG_MTD is not set
# CONFIG_OF is not set
CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
CONFIG_PARPORT=m
CONFIG_PARPORT_PC=m
CONFIG_PARPORT_SERIAL=m
# CONFIG_PARPORT_PC_FIFO is not set
# CONFIG_PARPORT_PC_SUPERIO is not set
# CONFIG_PARPORT_AX88796 is not set
CONFIG_PARPORT_1284=y
CONFIG_PNP=y
# CONFIG_PNP_DEBUG_MESSAGES is not set

#
# Protocols
#
CONFIG_PNPACPI=y
CONFIG_BLK_DEV=y
CONFIG_BLK_DEV_NULL_BLK=m
CONFIG_BLK_DEV_NULL_BLK_FAULT_INJECTION=y
# CONFIG_BLK_DEV_FD is not set
CONFIG_CDROM=m
# CONFIG_PARIDE is not set
# CONFIG_BLK_DEV_PCIESSD_MTIP32XX is not set
CONFIG_ZRAM=m
CONFIG_ZRAM_DEF_COMP_LZORLE=y
# CONFIG_ZRAM_DEF_COMP_LZO is not set
CONFIG_ZRAM_DEF_COMP="lzo-rle"
CONFIG_ZRAM_WRITEBACK=y
# CONFIG_ZRAM_MEMORY_TRACKING is not set
# CONFIG_ZRAM_MULTI_COMP is not set
CONFIG_BLK_DEV_LOOP=m
CONFIG_BLK_DEV_LOOP_MIN_COUNT=0
# CONFIG_BLK_DEV_DRBD is not set
CONFIG_BLK_DEV_NBD=m
CONFIG_BLK_DEV_RAM=m
CONFIG_BLK_DEV_RAM_COUNT=16
CONFIG_BLK_DEV_RAM_SIZE=16384
# CONFIG_ATA_OVER_ETH is not set
CONFIG_VIRTIO_BLK=m
CONFIG_BLK_DEV_RBD=m
# CONFIG_BLK_DEV_UBLK is not set

#
# NVME Support
#
CONFIG_NVME_CORE=m
CONFIG_BLK_DEV_NVME=m
CONFIG_NVME_MULTIPATH=y
# CONFIG_NVME_VERBOSE_ERRORS is not set
# CONFIG_NVME_HWMON is not set
CONFIG_NVME_FABRICS=m
# CONFIG_NVME_RDMA is not set
# CONFIG_NVME_FC is not set
# CONFIG_NVME_TCP is not set
# CONFIG_NVME_AUTH is not set
CONFIG_NVME_TARGET=m
# CONFIG_NVME_TARGET_PASSTHRU is not set
CONFIG_NVME_TARGET_LOOP=m
# CONFIG_NVME_TARGET_RDMA is not set
CONFIG_NVME_TARGET_FC=m
# CONFIG_NVME_TARGET_TCP is not set
# CONFIG_NVME_TARGET_AUTH is not set
# end of NVME Support

#
# Misc devices
#
CONFIG_SENSORS_LIS3LV02D=m
# CONFIG_AD525X_DPOT is not set
# CONFIG_DUMMY_IRQ is not set
# CONFIG_IBM_ASM is not set
# CONFIG_PHANTOM is not set
CONFIG_TIFM_CORE=m
CONFIG_TIFM_7XX1=m
# CONFIG_ICS932S401 is not set
CONFIG_ENCLOSURE_SERVICES=m
CONFIG_SGI_XP=m
CONFIG_HP_ILO=m
CONFIG_SGI_GRU=m
# CONFIG_SGI_GRU_DEBUG is not set
CONFIG_APDS9802ALS=m
CONFIG_ISL29003=m
CONFIG_ISL29020=m
CONFIG_SENSORS_TSL2550=m
CONFIG_SENSORS_BH1770=m
CONFIG_SENSORS_APDS990X=m
# CONFIG_HMC6352 is not set
# CONFIG_DS1682 is not set
CONFIG_VMWARE_BALLOON=m
# CONFIG_LATTICE_ECP3_CONFIG is not set
# CONFIG_SRAM is not set
# CONFIG_DW_XDATA_PCIE is not set
# CONFIG_PCI_ENDPOINT_TEST is not set
# CONFIG_XILINX_SDFEC is not set
CONFIG_MISC_RTSX=m
# CONFIG_C2PORT is not set

#
# EEPROM support
#
# CONFIG_EEPROM_AT24 is not set
# CONFIG_EEPROM_AT25 is not set
CONFIG_EEPROM_LEGACY=m
CONFIG_EEPROM_MAX6875=m
CONFIG_EEPROM_93CX6=m
# CONFIG_EEPROM_93XX46 is not set
# CONFIG_EEPROM_IDT_89HPESX is not set
# CONFIG_EEPROM_EE1004 is not set
# end of EEPROM support

CONFIG_CB710_CORE=m
# CONFIG_CB710_DEBUG is not set
CONFIG_CB710_DEBUG_ASSUMPTIONS=y

#
# Texas Instruments shared transport line discipline
#
# CONFIG_TI_ST is not set
# end of Texas Instruments shared transport line discipline

CONFIG_SENSORS_LIS3_I2C=m
CONFIG_ALTERA_STAPL=m
CONFIG_INTEL_MEI=m
CONFIG_INTEL_MEI_ME=m
# CONFIG_INTEL_MEI_TXE is not set
# CONFIG_INTEL_MEI_GSC is not set
# CONFIG_INTEL_MEI_HDCP is not set
# CONFIG_INTEL_MEI_PXP is not set
CONFIG_VMWARE_VMCI=m
# CONFIG_GENWQE is not set
# CONFIG_ECHO is not set
# CONFIG_BCM_VK is not set
# CONFIG_MISC_ALCOR_PCI is not set
CONFIG_MISC_RTSX_PCI=m
# CONFIG_MISC_RTSX_USB is not set
# CONFIG_HABANA_AI is not set
# CONFIG_UACCE is not set
CONFIG_PVPANIC=y
# CONFIG_PVPANIC_MMIO is not set
# CONFIG_PVPANIC_PCI is not set
# CONFIG_GP_PCI1XXXX is not set
# end of Misc devices

#
# SCSI device support
#
CONFIG_SCSI_MOD=y
CONFIG_RAID_ATTRS=m
CONFIG_SCSI_COMMON=y
CONFIG_SCSI=y
CONFIG_SCSI_DMA=y
CONFIG_SCSI_NETLINK=y
CONFIG_SCSI_PROC_FS=y

#
# SCSI support type (disk, tape, CD-ROM)
#
CONFIG_BLK_DEV_SD=m
CONFIG_CHR_DEV_ST=m
CONFIG_BLK_DEV_SR=m
CONFIG_CHR_DEV_SG=m
CONFIG_BLK_DEV_BSG=y
CONFIG_CHR_DEV_SCH=m
CONFIG_SCSI_ENCLOSURE=m
CONFIG_SCSI_CONSTANTS=y
CONFIG_SCSI_LOGGING=y
CONFIG_SCSI_SCAN_ASYNC=y

#
# SCSI Transports
#
CONFIG_SCSI_SPI_ATTRS=m
CONFIG_SCSI_FC_ATTRS=m
CONFIG_SCSI_ISCSI_ATTRS=m
CONFIG_SCSI_SAS_ATTRS=m
CONFIG_SCSI_SAS_LIBSAS=m
CONFIG_SCSI_SAS_ATA=y
CONFIG_SCSI_SAS_HOST_SMP=y
CONFIG_SCSI_SRP_ATTRS=m
# end of SCSI Transports

CONFIG_SCSI_LOWLEVEL=y
# CONFIG_ISCSI_TCP is not set
# CONFIG_ISCSI_BOOT_SYSFS is not set
# CONFIG_SCSI_CXGB3_ISCSI is not set
# CONFIG_SCSI_CXGB4_ISCSI is not set
# CONFIG_SCSI_BNX2_ISCSI is not set
# CONFIG_BE2ISCSI is not set
# CONFIG_BLK_DEV_3W_XXXX_RAID is not set
# CONFIG_SCSI_HPSA is not set
# CONFIG_SCSI_3W_9XXX is not set
# CONFIG_SCSI_3W_SAS is not set
# CONFIG_SCSI_ACARD is not set
# CONFIG_SCSI_AACRAID is not set
# CONFIG_SCSI_AIC7XXX is not set
# CONFIG_SCSI_AIC79XX is not set
# CONFIG_SCSI_AIC94XX is not set
# CONFIG_SCSI_MVSAS is not set
# CONFIG_SCSI_MVUMI is not set
# CONFIG_SCSI_ADVANSYS is not set
# CONFIG_SCSI_ARCMSR is not set
# CONFIG_SCSI_ESAS2R is not set
# CONFIG_MEGARAID_NEWGEN is not set
# CONFIG_MEGARAID_LEGACY is not set
# CONFIG_MEGARAID_SAS is not set
CONFIG_SCSI_MPT3SAS=m
CONFIG_SCSI_MPT2SAS_MAX_SGE=128
CONFIG_SCSI_MPT3SAS_MAX_SGE=128
# CONFIG_SCSI_MPT2SAS is not set
# CONFIG_SCSI_MPI3MR is not set
# CONFIG_SCSI_SMARTPQI is not set
# CONFIG_SCSI_HPTIOP is not set
# CONFIG_SCSI_BUSLOGIC is not set
# CONFIG_SCSI_MYRB is not set
# CONFIG_SCSI_MYRS is not set
# CONFIG_VMWARE_PVSCSI is not set
# CONFIG_LIBFC is not set
# CONFIG_SCSI_SNIC is not set
# CONFIG_SCSI_DMX3191D is not set
# CONFIG_SCSI_FDOMAIN_PCI is not set
CONFIG_SCSI_ISCI=m
# CONFIG_SCSI_IPS is not set
# CONFIG_SCSI_INITIO is not set
# CONFIG_SCSI_INIA100 is not set
# CONFIG_SCSI_PPA is not set
# CONFIG_SCSI_IMM is not set
# CONFIG_SCSI_STEX is not set
# CONFIG_SCSI_SYM53C8XX_2 is not set
# CONFIG_SCSI_IPR is not set
# CONFIG_SCSI_QLOGIC_1280 is not set
# CONFIG_SCSI_QLA_FC is not set
# CONFIG_SCSI_QLA_ISCSI is not set
# CONFIG_SCSI_LPFC is not set
# CONFIG_SCSI_EFCT is not set
# CONFIG_SCSI_DC395x is not set
# CONFIG_SCSI_AM53C974 is not set
# CONFIG_SCSI_WD719X is not set
CONFIG_SCSI_DEBUG=m
# CONFIG_SCSI_PMCRAID is not set
# CONFIG_SCSI_PM8001 is not set
# CONFIG_SCSI_BFA_FC is not set
# CONFIG_SCSI_VIRTIO is not set
# CONFIG_SCSI_CHELSIO_FCOE is not set
CONFIG_SCSI_DH=y
CONFIG_SCSI_DH_RDAC=y
CONFIG_SCSI_DH_HP_SW=y
CONFIG_SCSI_DH_EMC=y
CONFIG_SCSI_DH_ALUA=y
# end of SCSI device support

CONFIG_ATA=m
CONFIG_SATA_HOST=y
CONFIG_PATA_TIMINGS=y
CONFIG_ATA_VERBOSE_ERROR=y
CONFIG_ATA_FORCE=y
CONFIG_ATA_ACPI=y
# CONFIG_SATA_ZPODD is not set
CONFIG_SATA_PMP=y

#
# Controllers with non-SFF native interface
#
CONFIG_SATA_AHCI=m
CONFIG_SATA_MOBILE_LPM_POLICY=0
CONFIG_SATA_AHCI_PLATFORM=m
# CONFIG_AHCI_DWC is not set
# CONFIG_SATA_INIC162X is not set
# CONFIG_SATA_ACARD_AHCI is not set
# CONFIG_SATA_SIL24 is not set
CONFIG_ATA_SFF=y

#
# SFF controllers with custom DMA interface
#
# CONFIG_PDC_ADMA is not set
# CONFIG_SATA_QSTOR is not set
# CONFIG_SATA_SX4 is not set
CONFIG_ATA_BMDMA=y

#
# SATA SFF controllers with BMDMA
#
CONFIG_ATA_PIIX=m
# CONFIG_SATA_DWC is not set
# CONFIG_SATA_MV is not set
# CONFIG_SATA_NV is not set
# CONFIG_SATA_PROMISE is not set
# CONFIG_SATA_SIL is not set
# CONFIG_SATA_SIS is not set
# CONFIG_SATA_SVW is not set
# CONFIG_SATA_ULI is not set
# CONFIG_SATA_VIA is not set
# CONFIG_SATA_VITESSE is not set

#
# PATA SFF controllers with BMDMA
#
# CONFIG_PATA_ALI is not set
# CONFIG_PATA_AMD is not set
# CONFIG_PATA_ARTOP is not set
# CONFIG_PATA_ATIIXP is not set
# CONFIG_PATA_ATP867X is not set
# CONFIG_PATA_CMD64X is not set
# CONFIG_PATA_CYPRESS is not set
# CONFIG_PATA_EFAR is not set
# CONFIG_PATA_HPT366 is not set
# CONFIG_PATA_HPT37X is not set
# CONFIG_PATA_HPT3X2N is not set
# CONFIG_PATA_HPT3X3 is not set
# CONFIG_PATA_IT8213 is not set
# CONFIG_PATA_IT821X is not set
# CONFIG_PATA_JMICRON is not set
# CONFIG_PATA_MARVELL is not set
# CONFIG_PATA_NETCELL is not set
# CONFIG_PATA_NINJA32 is not set
# CONFIG_PATA_NS87415 is not set
# CONFIG_PATA_OLDPIIX is not set
# CONFIG_PATA_OPTIDMA is not set
# CONFIG_PATA_PDC2027X is not set
# CONFIG_PATA_PDC_OLD is not set
# CONFIG_PATA_RADISYS is not set
# CONFIG_PATA_RDC is not set
# CONFIG_PATA_SCH is not set
# CONFIG_PATA_SERVERWORKS is not set
# CONFIG_PATA_SIL680 is not set
# CONFIG_PATA_SIS is not set
# CONFIG_PATA_TOSHIBA is not set
# CONFIG_PATA_TRIFLEX is not set
# CONFIG_PATA_VIA is not set
# CONFIG_PATA_WINBOND is not set

#
# PIO-only SFF controllers
#
# CONFIG_PATA_CMD640_PCI is not set
# CONFIG_PATA_MPIIX is not set
# CONFIG_PATA_NS87410 is not set
# CONFIG_PATA_OPTI is not set
# CONFIG_PATA_RZ1000 is not set

#
# Generic fallback / legacy drivers
#
# CONFIG_PATA_ACPI is not set
CONFIG_ATA_GENERIC=m
# CONFIG_PATA_LEGACY is not set
CONFIG_MD=y
CONFIG_BLK_DEV_MD=y
CONFIG_MD_AUTODETECT=y
CONFIG_MD_LINEAR=m
CONFIG_MD_RAID0=m
CONFIG_MD_RAID1=m
CONFIG_MD_RAID10=m
CONFIG_MD_RAID456=m
CONFIG_MD_MULTIPATH=m
CONFIG_MD_FAULTY=m
CONFIG_MD_CLUSTER=m
# CONFIG_BCACHE is not set
CONFIG_BLK_DEV_DM_BUILTIN=y
CONFIG_BLK_DEV_DM=m
CONFIG_DM_DEBUG=y
CONFIG_DM_BUFIO=m
# CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
CONFIG_DM_BIO_PRISON=m
CONFIG_DM_PERSISTENT_DATA=m
# CONFIG_DM_UNSTRIPED is not set
CONFIG_DM_CRYPT=m
CONFIG_DM_SNAPSHOT=m
CONFIG_DM_THIN_PROVISIONING=m
CONFIG_DM_CACHE=m
CONFIG_DM_CACHE_SMQ=m
CONFIG_DM_WRITECACHE=m
# CONFIG_DM_EBS is not set
CONFIG_DM_ERA=m
# CONFIG_DM_CLONE is not set
CONFIG_DM_MIRROR=m
CONFIG_DM_LOG_USERSPACE=m
CONFIG_DM_RAID=m
CONFIG_DM_ZERO=m
CONFIG_DM_MULTIPATH=m
CONFIG_DM_MULTIPATH_QL=m
CONFIG_DM_MULTIPATH_ST=m
# CONFIG_DM_MULTIPATH_HST is not set
# CONFIG_DM_MULTIPATH_IOA is not set
CONFIG_DM_DELAY=m
# CONFIG_DM_DUST is not set
CONFIG_DM_UEVENT=y
CONFIG_DM_FLAKEY=m
CONFIG_DM_VERITY=m
# CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG is not set
# CONFIG_DM_VERITY_FEC is not set
CONFIG_DM_SWITCH=m
CONFIG_DM_LOG_WRITES=m
CONFIG_DM_INTEGRITY=m
# CONFIG_DM_ZONED is not set
CONFIG_DM_AUDIT=y
CONFIG_TARGET_CORE=m
CONFIG_TCM_IBLOCK=m
CONFIG_TCM_FILEIO=m
CONFIG_TCM_PSCSI=m
CONFIG_TCM_USER2=m
CONFIG_LOOPBACK_TARGET=m
CONFIG_ISCSI_TARGET=m
# CONFIG_SBP_TARGET is not set
# CONFIG_FUSION is not set

#
# IEEE 1394 (FireWire) support
#
CONFIG_FIREWIRE=m
CONFIG_FIREWIRE_OHCI=m
CONFIG_FIREWIRE_SBP2=m
CONFIG_FIREWIRE_NET=m
# CONFIG_FIREWIRE_NOSY is not set
# end of IEEE 1394 (FireWire) support

CONFIG_MACINTOSH_DRIVERS=y
CONFIG_MAC_EMUMOUSEBTN=y
CONFIG_NETDEVICES=y
CONFIG_MII=y
CONFIG_NET_CORE=y
# CONFIG_BONDING is not set
CONFIG_DUMMY=m
# CONFIG_WIREGUARD is not set
# CONFIG_EQUALIZER is not set
# CONFIG_NET_FC is not set
# CONFIG_IFB is not set
# CONFIG_NET_TEAM is not set
# CONFIG_MACVLAN is not set
# CONFIG_IPVLAN is not set
# CONFIG_VXLAN is not set
# CONFIG_GENEVE is not set
# CONFIG_BAREUDP is not set
# CONFIG_GTP is not set
# CONFIG_AMT is not set
CONFIG_MACSEC=m
CONFIG_NETCONSOLE=m
CONFIG_NETCONSOLE_DYNAMIC=y
CONFIG_NETPOLL=y
CONFIG_NET_POLL_CONTROLLER=y
CONFIG_TUN=m
# CONFIG_TUN_VNET_CROSS_LE is not set
CONFIG_VETH=m
CONFIG_VIRTIO_NET=m
# CONFIG_NLMON is not set
# CONFIG_NET_VRF is not set
# CONFIG_VSOCKMON is not set
# CONFIG_ARCNET is not set
CONFIG_ATM_DRIVERS=y
# CONFIG_ATM_DUMMY is not set
# CONFIG_ATM_TCP is not set
# CONFIG_ATM_LANAI is not set
# CONFIG_ATM_ENI is not set
# CONFIG_ATM_NICSTAR is not set
# CONFIG_ATM_IDT77252 is not set
# CONFIG_ATM_IA is not set
# CONFIG_ATM_FORE200E is not set
# CONFIG_ATM_HE is not set
# CONFIG_ATM_SOLOS is not set
CONFIG_ETHERNET=y
CONFIG_MDIO=y
# CONFIG_NET_VENDOR_3COM is not set
CONFIG_NET_VENDOR_ADAPTEC=y
# CONFIG_ADAPTEC_STARFIRE is not set
CONFIG_NET_VENDOR_AGERE=y
# CONFIG_ET131X is not set
CONFIG_NET_VENDOR_ALACRITECH=y
# CONFIG_SLICOSS is not set
CONFIG_NET_VENDOR_ALTEON=y
# CONFIG_ACENIC is not set
# CONFIG_ALTERA_TSE is not set
CONFIG_NET_VENDOR_AMAZON=y
# CONFIG_ENA_ETHERNET is not set
# CONFIG_NET_VENDOR_AMD is not set
CONFIG_NET_VENDOR_AQUANTIA=y
# CONFIG_AQTION is not set
CONFIG_NET_VENDOR_ARC=y
CONFIG_NET_VENDOR_ASIX=y
# CONFIG_SPI_AX88796C is not set
CONFIG_NET_VENDOR_ATHEROS=y
# CONFIG_ATL2 is not set
# CONFIG_ATL1 is not set
# CONFIG_ATL1E is not set
# CONFIG_ATL1C is not set
# CONFIG_ALX is not set
# CONFIG_CX_ECAT is not set
CONFIG_NET_VENDOR_BROADCOM=y
# CONFIG_B44 is not set
# CONFIG_BCMGENET is not set
# CONFIG_BNX2 is not set
# CONFIG_CNIC is not set
# CONFIG_TIGON3 is not set
# CONFIG_BNX2X is not set
# CONFIG_SYSTEMPORT is not set
# CONFIG_BNXT is not set
CONFIG_NET_VENDOR_CADENCE=y
# CONFIG_MACB is not set
CONFIG_NET_VENDOR_CAVIUM=y
# CONFIG_THUNDER_NIC_PF is not set
# CONFIG_THUNDER_NIC_VF is not set
# CONFIG_THUNDER_NIC_BGX is not set
# CONFIG_THUNDER_NIC_RGX is not set
CONFIG_CAVIUM_PTP=y
# CONFIG_LIQUIDIO is not set
# CONFIG_LIQUIDIO_VF is not set
CONFIG_NET_VENDOR_CHELSIO=y
# CONFIG_CHELSIO_T1 is not set
# CONFIG_CHELSIO_T3 is not set
# CONFIG_CHELSIO_T4 is not set
# CONFIG_CHELSIO_T4VF is not set
CONFIG_NET_VENDOR_CISCO=y
# CONFIG_ENIC is not set
CONFIG_NET_VENDOR_CORTINA=y
CONFIG_NET_VENDOR_DAVICOM=y
# CONFIG_DM9051 is not set
# CONFIG_DNET is not set
CONFIG_NET_VENDOR_DEC=y
# CONFIG_NET_TULIP is not set
CONFIG_NET_VENDOR_DLINK=y
# CONFIG_DL2K is not set
# CONFIG_SUNDANCE is not set
CONFIG_NET_VENDOR_EMULEX=y
# CONFIG_BE2NET is not set
CONFIG_NET_VENDOR_ENGLEDER=y
# CONFIG_TSNEP is not set
CONFIG_NET_VENDOR_EZCHIP=y
CONFIG_NET_VENDOR_FUNGIBLE=y
# CONFIG_FUN_ETH is not set
CONFIG_NET_VENDOR_GOOGLE=y
# CONFIG_GVE is not set
CONFIG_NET_VENDOR_HUAWEI=y
# CONFIG_HINIC is not set
CONFIG_NET_VENDOR_I825XX=y
CONFIG_NET_VENDOR_INTEL=y
# CONFIG_E100 is not set
CONFIG_E1000=y
CONFIG_E1000E=y
CONFIG_E1000E_HWTS=y
CONFIG_IGB=y
CONFIG_IGB_HWMON=y
# CONFIG_IGBVF is not set
# CONFIG_IXGB is not set
CONFIG_IXGBE=y
CONFIG_IXGBE_HWMON=y
# CONFIG_IXGBE_DCB is not set
# CONFIG_IXGBE_IPSEC is not set
# CONFIG_IXGBEVF is not set
CONFIG_I40E=y
# CONFIG_I40E_DCB is not set
# CONFIG_I40EVF is not set
# CONFIG_ICE is not set
# CONFIG_FM10K is not set
CONFIG_IGC=y
CONFIG_NET_VENDOR_WANGXUN=y
# CONFIG_NGBE is not set
# CONFIG_TXGBE is not set
# CONFIG_JME is not set
CONFIG_NET_VENDOR_ADI=y
# CONFIG_ADIN1110 is not set
CONFIG_NET_VENDOR_LITEX=y
CONFIG_NET_VENDOR_MARVELL=y
# CONFIG_MVMDIO is not set
# CONFIG_SKGE is not set
# CONFIG_SKY2 is not set
# CONFIG_OCTEON_EP is not set
# CONFIG_PRESTERA is not set
CONFIG_NET_VENDOR_MELLANOX=y
# CONFIG_MLX4_EN is not set
# CONFIG_MLX5_CORE is not set
# CONFIG_MLXSW_CORE is not set
# CONFIG_MLXFW is not set
CONFIG_NET_VENDOR_MICREL=y
# CONFIG_KS8842 is not set
# CONFIG_KS8851 is not set
# CONFIG_KS8851_MLL is not set
# CONFIG_KSZ884X_PCI is not set
CONFIG_NET_VENDOR_MICROCHIP=y
# CONFIG_ENC28J60 is not set
# CONFIG_ENCX24J600 is not set
# CONFIG_LAN743X is not set
# CONFIG_VCAP is not set
CONFIG_NET_VENDOR_MICROSEMI=y
CONFIG_NET_VENDOR_MICROSOFT=y
CONFIG_NET_VENDOR_MYRI=y
# CONFIG_MYRI10GE is not set
CONFIG_NET_VENDOR_NI=y
# CONFIG_NI_XGE_MANAGEMENT_ENET is not set
CONFIG_NET_VENDOR_NATSEMI=y
# CONFIG_NATSEMI is not set
# CONFIG_NS83820 is not set
CONFIG_NET_VENDOR_NETERION=y
# CONFIG_S2IO is not set
CONFIG_NET_VENDOR_NETRONOME=y
# CONFIG_NFP is not set
CONFIG_NET_VENDOR_8390=y
# CONFIG_NE2K_PCI is not set
CONFIG_NET_VENDOR_NVIDIA=y
# CONFIG_FORCEDETH is not set
CONFIG_NET_VENDOR_OKI=y
# CONFIG_ETHOC is not set
CONFIG_NET_VENDOR_PACKET_ENGINES=y
# CONFIG_HAMACHI is not set
# CONFIG_YELLOWFIN is not set
CONFIG_NET_VENDOR_PENSANDO=y
# CONFIG_IONIC is not set
CONFIG_NET_VENDOR_QLOGIC=y
# CONFIG_QLA3XXX is not set
# CONFIG_QLCNIC is not set
# CONFIG_NETXEN_NIC is not set
# CONFIG_QED is not set
CONFIG_NET_VENDOR_BROCADE=y
# CONFIG_BNA is not set
CONFIG_NET_VENDOR_QUALCOMM=y
# CONFIG_QCOM_EMAC is not set
# CONFIG_RMNET is not set
CONFIG_NET_VENDOR_RDC=y
# CONFIG_R6040 is not set
CONFIG_NET_VENDOR_REALTEK=y
# CONFIG_ATP is not set
# CONFIG_8139CP is not set
# CONFIG_8139TOO is not set
CONFIG_R8169=y
CONFIG_NET_VENDOR_RENESAS=y
CONFIG_NET_VENDOR_ROCKER=y
# CONFIG_ROCKER is not set
CONFIG_NET_VENDOR_SAMSUNG=y
# CONFIG_SXGBE_ETH is not set
CONFIG_NET_VENDOR_SEEQ=y
CONFIG_NET_VENDOR_SILAN=y
# CONFIG_SC92031 is not set
CONFIG_NET_VENDOR_SIS=y
# CONFIG_SIS900 is not set
# CONFIG_SIS190 is not set
CONFIG_NET_VENDOR_SOLARFLARE=y
# CONFIG_SFC is not set
# CONFIG_SFC_FALCON is not set
# CONFIG_SFC_SIENA is not set
CONFIG_NET_VENDOR_SMSC=y
# CONFIG_EPIC100 is not set
# CONFIG_SMSC911X is not set
# CONFIG_SMSC9420 is not set
CONFIG_NET_VENDOR_SOCIONEXT=y
CONFIG_NET_VENDOR_STMICRO=y
# CONFIG_STMMAC_ETH is not set
CONFIG_NET_VENDOR_SUN=y
# CONFIG_HAPPYMEAL is not set
# CONFIG_SUNGEM is not set
# CONFIG_CASSINI is not set
# CONFIG_NIU is not set
CONFIG_NET_VENDOR_SYNOPSYS=y
# CONFIG_DWC_XLGMAC is not set
CONFIG_NET_VENDOR_TEHUTI=y
# CONFIG_TEHUTI is not set
CONFIG_NET_VENDOR_TI=y
# CONFIG_TI_CPSW_PHY_SEL is not set
# CONFIG_TLAN is not set
CONFIG_NET_VENDOR_VERTEXCOM=y
# CONFIG_MSE102X is not set
CONFIG_NET_VENDOR_VIA=y
# CONFIG_VIA_RHINE is not set
# CONFIG_VIA_VELOCITY is not set
CONFIG_NET_VENDOR_WIZNET=y
# CONFIG_WIZNET_W5100 is not set
# CONFIG_WIZNET_W5300 is not set
CONFIG_NET_VENDOR_XILINX=y
# CONFIG_XILINX_EMACLITE is not set
# CONFIG_XILINX_AXI_EMAC is not set
# CONFIG_XILINX_LL_TEMAC is not set
# CONFIG_FDDI is not set
# CONFIG_HIPPI is not set
# CONFIG_NET_SB1000 is not set
CONFIG_PHYLINK=y
CONFIG_PHYLIB=y
CONFIG_SWPHY=y
# CONFIG_LED_TRIGGER_PHY is not set
CONFIG_FIXED_PHY=y
# CONFIG_SFP is not set

#
# MII PHY device drivers
#
# CONFIG_AMD_PHY is not set
# CONFIG_ADIN_PHY is not set
# CONFIG_ADIN1100_PHY is not set
# CONFIG_AQUANTIA_PHY is not set
CONFIG_AX88796B_PHY=y
# CONFIG_BROADCOM_PHY is not set
# CONFIG_BCM54140_PHY is not set
# CONFIG_BCM7XXX_PHY is not set
# CONFIG_BCM84881_PHY is not set
# CONFIG_BCM87XX_PHY is not set
# CONFIG_CICADA_PHY is not set
# CONFIG_CORTINA_PHY is not set
# CONFIG_DAVICOM_PHY is not set
# CONFIG_ICPLUS_PHY is not set
# CONFIG_LXT_PHY is not set
# CONFIG_INTEL_XWAY_PHY is not set
# CONFIG_LSI_ET1011C_PHY is not set
# CONFIG_MARVELL_PHY is not set
# CONFIG_MARVELL_10G_PHY is not set
# CONFIG_MARVELL_88X2222_PHY is not set
# CONFIG_MAXLINEAR_GPHY is not set
# CONFIG_MEDIATEK_GE_PHY is not set
# CONFIG_MICREL_PHY is not set
# CONFIG_MICROCHIP_PHY is not set
# CONFIG_MICROCHIP_T1_PHY is not set
# CONFIG_MICROSEMI_PHY is not set
# CONFIG_MOTORCOMM_PHY is not set
# CONFIG_NATIONAL_PHY is not set
# CONFIG_NXP_C45_TJA11XX_PHY is not set
# CONFIG_NXP_TJA11XX_PHY is not set
# CONFIG_QSEMI_PHY is not set
CONFIG_REALTEK_PHY=y
# CONFIG_RENESAS_PHY is not set
# CONFIG_ROCKCHIP_PHY is not set
# CONFIG_SMSC_PHY is not set
# CONFIG_STE10XP is not set
# CONFIG_TERANETICS_PHY is not set
# CONFIG_DP83822_PHY is not set
# CONFIG_DP83TC811_PHY is not set
# CONFIG_DP83848_PHY is not set
# CONFIG_DP83867_PHY is not set
# CONFIG_DP83869_PHY is not set
# CONFIG_DP83TD510_PHY is not set
# CONFIG_VITESSE_PHY is not set
# CONFIG_XILINX_GMII2RGMII is not set
# CONFIG_MICREL_KS8995MA is not set
# CONFIG_PSE_CONTROLLER is not set
CONFIG_CAN_DEV=m
CONFIG_CAN_VCAN=m
# CONFIG_CAN_VXCAN is not set
CONFIG_CAN_NETLINK=y
CONFIG_CAN_CALC_BITTIMING=y
# CONFIG_CAN_CAN327 is not set
# CONFIG_CAN_KVASER_PCIEFD is not set
CONFIG_CAN_SLCAN=m
CONFIG_CAN_C_CAN=m
CONFIG_CAN_C_CAN_PLATFORM=m
CONFIG_CAN_C_CAN_PCI=m
CONFIG_CAN_CC770=m
# CONFIG_CAN_CC770_ISA is not set
CONFIG_CAN_CC770_PLATFORM=m
# CONFIG_CAN_CTUCANFD_PCI is not set
# CONFIG_CAN_IFI_CANFD is not set
# CONFIG_CAN_M_CAN is not set
# CONFIG_CAN_PEAK_PCIEFD is not set
CONFIG_CAN_SJA1000=m
CONFIG_CAN_EMS_PCI=m
# CONFIG_CAN_F81601 is not set
CONFIG_CAN_KVASER_PCI=m
CONFIG_CAN_PEAK_PCI=m
CONFIG_CAN_PEAK_PCIEC=y
CONFIG_CAN_PLX_PCI=m
# CONFIG_CAN_SJA1000_ISA is not set
# CONFIG_CAN_SJA1000_PLATFORM is not set
CONFIG_CAN_SOFTING=m

#
# CAN SPI interfaces
#
# CONFIG_CAN_HI311X is not set
# CONFIG_CAN_MCP251X is not set
# CONFIG_CAN_MCP251XFD is not set
# end of CAN SPI interfaces

#
# CAN USB interfaces
#
# CONFIG_CAN_8DEV_USB is not set
# CONFIG_CAN_EMS_USB is not set
# CONFIG_CAN_ESD_USB is not set
# CONFIG_CAN_ETAS_ES58X is not set
# CONFIG_CAN_GS_USB is not set
# CONFIG_CAN_KVASER_USB is not set
# CONFIG_CAN_MCBA_USB is not set
# CONFIG_CAN_PEAK_USB is not set
# CONFIG_CAN_UCAN is not set
# end of CAN USB interfaces

# CONFIG_CAN_DEBUG_DEVICES is not set
CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
CONFIG_FWNODE_MDIO=y
CONFIG_ACPI_MDIO=y
CONFIG_MDIO_DEVRES=y
# CONFIG_MDIO_BITBANG is not set
# CONFIG_MDIO_BCM_UNIMAC is not set
# CONFIG_MDIO_MVUSB is not set
# CONFIG_MDIO_THUNDER is not set

#
# MDIO Multiplexers
#

#
# PCS device drivers
#
# end of PCS device drivers

# CONFIG_PLIP is not set
# CONFIG_PPP is not set
# CONFIG_SLIP is not set
CONFIG_USB_NET_DRIVERS=y
# CONFIG_USB_CATC is not set
# CONFIG_USB_KAWETH is not set
# CONFIG_USB_PEGASUS is not set
# CONFIG_USB_RTL8150 is not set
CONFIG_USB_RTL8152=y
# CONFIG_USB_LAN78XX is not set
CONFIG_USB_USBNET=y
CONFIG_USB_NET_AX8817X=y
CONFIG_USB_NET_AX88179_178A=y
# CONFIG_USB_NET_CDCETHER is not set
# CONFIG_USB_NET_CDC_EEM is not set
# CONFIG_USB_NET_CDC_NCM is not set
# CONFIG_USB_NET_HUAWEI_CDC_NCM is not set
# CONFIG_USB_NET_CDC_MBIM is not set
# CONFIG_USB_NET_DM9601 is not set
# CONFIG_USB_NET_SR9700 is not set
# CONFIG_USB_NET_SR9800 is not set
# CONFIG_USB_NET_SMSC75XX is not set
# CONFIG_USB_NET_SMSC95XX is not set
# CONFIG_USB_NET_GL620A is not set
# CONFIG_USB_NET_NET1080 is not set
# CONFIG_USB_NET_PLUSB is not set
# CONFIG_USB_NET_MCS7830 is not set
# CONFIG_USB_NET_RNDIS_HOST is not set
# CONFIG_USB_NET_CDC_SUBSET is not set
# CONFIG_USB_NET_ZAURUS is not set
# CONFIG_USB_NET_CX82310_ETH is not set
# CONFIG_USB_NET_KALMIA is not set
# CONFIG_USB_NET_QMI_WWAN is not set
# CONFIG_USB_HSO is not set
# CONFIG_USB_NET_INT51X1 is not set
# CONFIG_USB_IPHETH is not set
# CONFIG_USB_SIERRA_NET is not set
# CONFIG_USB_NET_CH9200 is not set
# CONFIG_USB_NET_AQC111 is not set
CONFIG_WLAN=y
CONFIG_WLAN_VENDOR_ADMTEK=y
# CONFIG_ADM8211 is not set
CONFIG_WLAN_VENDOR_ATH=y
# CONFIG_ATH_DEBUG is not set
# CONFIG_ATH5K is not set
# CONFIG_ATH5K_PCI is not set
# CONFIG_ATH9K is not set
# CONFIG_ATH9K_HTC is not set
# CONFIG_CARL9170 is not set
# CONFIG_ATH6KL is not set
# CONFIG_AR5523 is not set
# CONFIG_WIL6210 is not set
# CONFIG_ATH10K is not set
# CONFIG_WCN36XX is not set
# CONFIG_ATH11K is not set
CONFIG_WLAN_VENDOR_ATMEL=y
# CONFIG_ATMEL is not set
# CONFIG_AT76C50X_USB is not set
CONFIG_WLAN_VENDOR_BROADCOM=y
# CONFIG_B43 is not set
# CONFIG_B43LEGACY is not set
# CONFIG_BRCMSMAC is not set
# CONFIG_BRCMFMAC is not set
CONFIG_WLAN_VENDOR_CISCO=y
# CONFIG_AIRO is not set
CONFIG_WLAN_VENDOR_INTEL=y
# CONFIG_IPW2100 is not set
# CONFIG_IPW2200 is not set
# CONFIG_IWL4965 is not set
# CONFIG_IWL3945 is not set
# CONFIG_IWLWIFI is not set
CONFIG_WLAN_VENDOR_INTERSIL=y
# CONFIG_HOSTAP is not set
# CONFIG_HERMES is not set
# CONFIG_P54_COMMON is not set
CONFIG_WLAN_VENDOR_MARVELL=y
# CONFIG_LIBERTAS is not set
# CONFIG_LIBERTAS_THINFIRM is not set
# CONFIG_MWIFIEX is not set
# CONFIG_MWL8K is not set
# CONFIG_WLAN_VENDOR_MEDIATEK is not set
CONFIG_WLAN_VENDOR_MICROCHIP=y
# CONFIG_WILC1000_SDIO is not set
# CONFIG_WILC1000_SPI is not set
CONFIG_WLAN_VENDOR_PURELIFI=y
# CONFIG_PLFXLC is not set
CONFIG_WLAN_VENDOR_RALINK=y
# CONFIG_RT2X00 is not set
CONFIG_WLAN_VENDOR_REALTEK=y
# CONFIG_RTL8180 is not set
# CONFIG_RTL8187 is not set
CONFIG_RTL_CARDS=m
# CONFIG_RTL8192CE is not set
# CONFIG_RTL8192SE is not set
# CONFIG_RTL8192DE is not set
# CONFIG_RTL8723AE is not set
# CONFIG_RTL8723BE is not set
# CONFIG_RTL8188EE is not set
# CONFIG_RTL8192EE is not set
# CONFIG_RTL8821AE is not set
# CONFIG_RTL8192CU is not set
# CONFIG_RTL8XXXU is not set
# CONFIG_RTW88 is not set
# CONFIG_RTW89 is not set
CONFIG_WLAN_VENDOR_RSI=y
# CONFIG_RSI_91X is not set
CONFIG_WLAN_VENDOR_SILABS=y
# CONFIG_WFX is not set
CONFIG_WLAN_VENDOR_ST=y
# CONFIG_CW1200 is not set
CONFIG_WLAN_VENDOR_TI=y
# CONFIG_WL1251 is not set
# CONFIG_WL12XX is not set
# CONFIG_WL18XX is not set
# CONFIG_WLCORE is not set
CONFIG_WLAN_VENDOR_ZYDAS=y
# CONFIG_USB_ZD1201 is not set
# CONFIG_ZD1211RW is not set
CONFIG_WLAN_VENDOR_QUANTENNA=y
# CONFIG_QTNFMAC_PCIE is not set
CONFIG_MAC80211_HWSIM=m
# CONFIG_USB_NET_RNDIS_WLAN is not set
# CONFIG_VIRT_WIFI is not set
# CONFIG_WAN is not set

#
# Wireless WAN
#
# CONFIG_WWAN is not set
# end of Wireless WAN

# CONFIG_VMXNET3 is not set
# CONFIG_FUJITSU_ES is not set
# CONFIG_NETDEVSIM is not set
CONFIG_NET_FAILOVER=m
# CONFIG_ISDN is not set

#
# Input device support
#
CONFIG_INPUT=y
CONFIG_INPUT_LEDS=y
CONFIG_INPUT_FF_MEMLESS=m
CONFIG_INPUT_SPARSEKMAP=m
# CONFIG_INPUT_MATRIXKMAP is not set
CONFIG_INPUT_VIVALDIFMAP=y

#
# Userland interfaces
#
CONFIG_INPUT_MOUSEDEV=y
# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
CONFIG_INPUT_JOYDEV=m
CONFIG_INPUT_EVDEV=y
# CONFIG_INPUT_EVBUG is not set

#
# Input Device Drivers
#
CONFIG_INPUT_KEYBOARD=y
# CONFIG_KEYBOARD_ADP5588 is not set
# CONFIG_KEYBOARD_ADP5589 is not set
# CONFIG_KEYBOARD_APPLESPI is not set
CONFIG_KEYBOARD_ATKBD=y
# CONFIG_KEYBOARD_QT1050 is not set
# CONFIG_KEYBOARD_QT1070 is not set
# CONFIG_KEYBOARD_QT2160 is not set
# CONFIG_KEYBOARD_DLINK_DIR685 is not set
# CONFIG_KEYBOARD_LKKBD is not set
# CONFIG_KEYBOARD_GPIO is not set
# CONFIG_KEYBOARD_GPIO_POLLED is not set
# CONFIG_KEYBOARD_TCA6416 is not set
# CONFIG_KEYBOARD_TCA8418 is not set
# CONFIG_KEYBOARD_MATRIX is not set
# CONFIG_KEYBOARD_LM8323 is not set
# CONFIG_KEYBOARD_LM8333 is not set
# CONFIG_KEYBOARD_MAX7359 is not set
# CONFIG_KEYBOARD_MCS is not set
# CONFIG_KEYBOARD_MPR121 is not set
# CONFIG_KEYBOARD_NEWTON is not set
# CONFIG_KEYBOARD_OPENCORES is not set
# CONFIG_KEYBOARD_SAMSUNG is not set
# CONFIG_KEYBOARD_STOWAWAY is not set
# CONFIG_KEYBOARD_SUNKBD is not set
# CONFIG_KEYBOARD_TM2_TOUCHKEY is not set
# CONFIG_KEYBOARD_XTKBD is not set
# CONFIG_KEYBOARD_CYPRESS_SF is not set
CONFIG_INPUT_MOUSE=y
CONFIG_MOUSE_PS2=y
CONFIG_MOUSE_PS2_ALPS=y
CONFIG_MOUSE_PS2_BYD=y
CONFIG_MOUSE_PS2_LOGIPS2PP=y
CONFIG_MOUSE_PS2_SYNAPTICS=y
CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=y
CONFIG_MOUSE_PS2_CYPRESS=y
CONFIG_MOUSE_PS2_LIFEBOOK=y
CONFIG_MOUSE_PS2_TRACKPOINT=y
CONFIG_MOUSE_PS2_ELANTECH=y
CONFIG_MOUSE_PS2_ELANTECH_SMBUS=y
CONFIG_MOUSE_PS2_SENTELIC=y
# CONFIG_MOUSE_PS2_TOUCHKIT is not set
CONFIG_MOUSE_PS2_FOCALTECH=y
CONFIG_MOUSE_PS2_VMMOUSE=y
CONFIG_MOUSE_PS2_SMBUS=y
CONFIG_MOUSE_SERIAL=m
# CONFIG_MOUSE_APPLETOUCH is not set
# CONFIG_MOUSE_BCM5974 is not set
CONFIG_MOUSE_CYAPA=m
CONFIG_MOUSE_ELAN_I2C=m
CONFIG_MOUSE_ELAN_I2C_I2C=y
CONFIG_MOUSE_ELAN_I2C_SMBUS=y
CONFIG_MOUSE_VSXXXAA=m
# CONFIG_MOUSE_GPIO is not set
CONFIG_MOUSE_SYNAPTICS_I2C=m
# CONFIG_MOUSE_SYNAPTICS_USB is not set
# CONFIG_INPUT_JOYSTICK is not set
# CONFIG_INPUT_TABLET is not set
# CONFIG_INPUT_TOUCHSCREEN is not set
CONFIG_INPUT_MISC=y
# CONFIG_INPUT_AD714X is not set
# CONFIG_INPUT_BMA150 is not set
# CONFIG_INPUT_E3X0_BUTTON is not set
# CONFIG_INPUT_PCSPKR is not set
# CONFIG_INPUT_MMA8450 is not set
# CONFIG_INPUT_APANEL is not set
# CONFIG_INPUT_GPIO_BEEPER is not set
# CONFIG_INPUT_GPIO_DECODER is not set
# CONFIG_INPUT_GPIO_VIBRA is not set
# CONFIG_INPUT_ATLAS_BTNS is not set
# CONFIG_INPUT_ATI_REMOTE2 is not set
# CONFIG_INPUT_KEYSPAN_REMOTE is not set
# CONFIG_INPUT_KXTJ9 is not set
# CONFIG_INPUT_POWERMATE is not set
# CONFIG_INPUT_YEALINK is not set
# CONFIG_INPUT_CM109 is not set
CONFIG_INPUT_UINPUT=y
# CONFIG_INPUT_PCF8574 is not set
# CONFIG_INPUT_PWM_BEEPER is not set
# CONFIG_INPUT_PWM_VIBRA is not set
# CONFIG_INPUT_GPIO_ROTARY_ENCODER is not set
# CONFIG_INPUT_DA7280_HAPTICS is not set
# CONFIG_INPUT_ADXL34X is not set
# CONFIG_INPUT_IMS_PCU is not set
# CONFIG_INPUT_IQS269A is not set
# CONFIG_INPUT_IQS626A is not set
# CONFIG_INPUT_IQS7222 is not set
# CONFIG_INPUT_CMA3000 is not set
# CONFIG_INPUT_IDEAPAD_SLIDEBAR is not set
# CONFIG_INPUT_DRV260X_HAPTICS is not set
# CONFIG_INPUT_DRV2665_HAPTICS is not set
# CONFIG_INPUT_DRV2667_HAPTICS is not set
CONFIG_RMI4_CORE=m
CONFIG_RMI4_I2C=m
CONFIG_RMI4_SPI=m
CONFIG_RMI4_SMB=m
CONFIG_RMI4_F03=y
CONFIG_RMI4_F03_SERIO=m
CONFIG_RMI4_2D_SENSOR=y
CONFIG_RMI4_F11=y
CONFIG_RMI4_F12=y
CONFIG_RMI4_F30=y
CONFIG_RMI4_F34=y
# CONFIG_RMI4_F3A is not set
CONFIG_RMI4_F55=y

#
# Hardware I/O ports
#
CONFIG_SERIO=y
CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
CONFIG_SERIO_I8042=y
CONFIG_SERIO_SERPORT=y
# CONFIG_SERIO_CT82C710 is not set
# CONFIG_SERIO_PARKBD is not set
# CONFIG_SERIO_PCIPS2 is not set
CONFIG_SERIO_LIBPS2=y
CONFIG_SERIO_RAW=m
CONFIG_SERIO_ALTERA_PS2=m
# CONFIG_SERIO_PS2MULT is not set
CONFIG_SERIO_ARC_PS2=m
# CONFIG_SERIO_GPIO_PS2 is not set
# CONFIG_USERIO is not set
# CONFIG_GAMEPORT is not set
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
CONFIG_TTY=y
CONFIG_VT=y
CONFIG_CONSOLE_TRANSLATIONS=y
CONFIG_VT_CONSOLE=y
CONFIG_VT_CONSOLE_SLEEP=y
CONFIG_HW_CONSOLE=y
CONFIG_VT_HW_CONSOLE_BINDING=y
CONFIG_UNIX98_PTYS=y
# CONFIG_LEGACY_PTYS is not set
CONFIG_LEGACY_TIOCSTI=y
CONFIG_LDISC_AUTOLOAD=y

#
# Serial drivers
#
CONFIG_SERIAL_EARLYCON=y
CONFIG_SERIAL_8250=y
# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
CONFIG_SERIAL_8250_PNP=y
# CONFIG_SERIAL_8250_16550A_VARIANTS is not set
# CONFIG_SERIAL_8250_FINTEK is not set
CONFIG_SERIAL_8250_CONSOLE=y
CONFIG_SERIAL_8250_DMA=y
CONFIG_SERIAL_8250_PCI=y
CONFIG_SERIAL_8250_EXAR=y
CONFIG_SERIAL_8250_NR_UARTS=64
CONFIG_SERIAL_8250_RUNTIME_UARTS=4
CONFIG_SERIAL_8250_EXTENDED=y
CONFIG_SERIAL_8250_MANY_PORTS=y
CONFIG_SERIAL_8250_SHARE_IRQ=y
# CONFIG_SERIAL_8250_DETECT_IRQ is not set
CONFIG_SERIAL_8250_RSA=y
CONFIG_SERIAL_8250_DWLIB=y
CONFIG_SERIAL_8250_DW=y
# CONFIG_SERIAL_8250_RT288X is not set
CONFIG_SERIAL_8250_LPSS=y
CONFIG_SERIAL_8250_MID=y
CONFIG_SERIAL_8250_PERICOM=y

#
# Non-8250 serial port support
#
# CONFIG_SERIAL_MAX3100 is not set
# CONFIG_SERIAL_MAX310X is not set
# CONFIG_SERIAL_UARTLITE is not set
CONFIG_SERIAL_CORE=y
CONFIG_SERIAL_CORE_CONSOLE=y
CONFIG_SERIAL_JSM=m
# CONFIG_SERIAL_LANTIQ is not set
# CONFIG_SERIAL_SCCNXP is not set
# CONFIG_SERIAL_SC16IS7XX is not set
# CONFIG_SERIAL_ALTERA_JTAGUART is not set
# CONFIG_SERIAL_ALTERA_UART is not set
CONFIG_SERIAL_ARC=m
CONFIG_SERIAL_ARC_NR_PORTS=1
# CONFIG_SERIAL_RP2 is not set
# CONFIG_SERIAL_FSL_LPUART is not set
# CONFIG_SERIAL_FSL_LINFLEXUART is not set
# CONFIG_SERIAL_SPRD is not set
# end of Serial drivers

CONFIG_SERIAL_MCTRL_GPIO=y
CONFIG_SERIAL_NONSTANDARD=y
# CONFIG_MOXA_INTELLIO is not set
# CONFIG_MOXA_SMARTIO is not set
CONFIG_SYNCLINK_GT=m
CONFIG_N_HDLC=m
CONFIG_N_GSM=m
CONFIG_NOZOMI=m
# CONFIG_NULL_TTY is not set
CONFIG_HVC_DRIVER=y
# CONFIG_SERIAL_DEV_BUS is not set
# CONFIG_TTY_PRINTK is not set
CONFIG_PRINTER=m
# CONFIG_LP_CONSOLE is not set
CONFIG_PPDEV=m
CONFIG_VIRTIO_CONSOLE=m
CONFIG_IPMI_HANDLER=m
CONFIG_IPMI_DMI_DECODE=y
CONFIG_IPMI_PLAT_DATA=y
CONFIG_IPMI_PANIC_EVENT=y
CONFIG_IPMI_PANIC_STRING=y
CONFIG_IPMI_DEVICE_INTERFACE=m
CONFIG_IPMI_SI=m
CONFIG_IPMI_SSIF=m
CONFIG_IPMI_WATCHDOG=m
CONFIG_IPMI_POWEROFF=m
CONFIG_HW_RANDOM=y
CONFIG_HW_RANDOM_TIMERIOMEM=m
CONFIG_HW_RANDOM_INTEL=m
# CONFIG_HW_RANDOM_AMD is not set
# CONFIG_HW_RANDOM_BA431 is not set
CONFIG_HW_RANDOM_VIA=m
CONFIG_HW_RANDOM_VIRTIO=y
# CONFIG_HW_RANDOM_XIPHERA is not set
# CONFIG_APPLICOM is not set
# CONFIG_MWAVE is not set
CONFIG_DEVMEM=y
CONFIG_NVRAM=y
CONFIG_DEVPORT=y
CONFIG_HPET=y
CONFIG_HPET_MMAP=y
# CONFIG_HPET_MMAP_DEFAULT is not set
CONFIG_HANGCHECK_TIMER=m
CONFIG_UV_MMTIMER=m
CONFIG_TCG_TPM=y
CONFIG_HW_RANDOM_TPM=y
CONFIG_TCG_TIS_CORE=y
CONFIG_TCG_TIS=y
# CONFIG_TCG_TIS_SPI is not set
# CONFIG_TCG_TIS_I2C is not set
# CONFIG_TCG_TIS_I2C_CR50 is not set
CONFIG_TCG_TIS_I2C_ATMEL=m
CONFIG_TCG_TIS_I2C_INFINEON=m
CONFIG_TCG_TIS_I2C_NUVOTON=m
CONFIG_TCG_NSC=m
CONFIG_TCG_ATMEL=m
CONFIG_TCG_INFINEON=m
CONFIG_TCG_CRB=y
# CONFIG_TCG_VTPM_PROXY is not set
CONFIG_TCG_TIS_ST33ZP24=m
CONFIG_TCG_TIS_ST33ZP24_I2C=m
# CONFIG_TCG_TIS_ST33ZP24_SPI is not set
CONFIG_TELCLOCK=m
# CONFIG_XILLYBUS is not set
# CONFIG_XILLYUSB is not set
# end of Character devices

#
# I2C support
#
CONFIG_I2C=y
CONFIG_ACPI_I2C_OPREGION=y
CONFIG_I2C_BOARDINFO=y
CONFIG_I2C_COMPAT=y
CONFIG_I2C_CHARDEV=m
CONFIG_I2C_MUX=m

#
# Multiplexer I2C Chip support
#
# CONFIG_I2C_MUX_GPIO is not set
# CONFIG_I2C_MUX_LTC4306 is not set
# CONFIG_I2C_MUX_PCA9541 is not set
# CONFIG_I2C_MUX_PCA954x is not set
# CONFIG_I2C_MUX_REG is not set
CONFIG_I2C_MUX_MLXCPLD=m
# end of Multiplexer I2C Chip support

CONFIG_I2C_HELPER_AUTO=y
CONFIG_I2C_SMBUS=m
CONFIG_I2C_ALGOBIT=y
CONFIG_I2C_ALGOPCA=m

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
# CONFIG_I2C_ALI1535 is not set
# CONFIG_I2C_ALI1563 is not set
# CONFIG_I2C_ALI15X3 is not set
# CONFIG_I2C_AMD756 is not set
# CONFIG_I2C_AMD8111 is not set
# CONFIG_I2C_AMD_MP2 is not set
CONFIG_I2C_I801=m
CONFIG_I2C_ISCH=m
CONFIG_I2C_ISMT=m
CONFIG_I2C_PIIX4=m
CONFIG_I2C_NFORCE2=m
CONFIG_I2C_NFORCE2_S4985=m
# CONFIG_I2C_NVIDIA_GPU is not set
# CONFIG_I2C_SIS5595 is not set
# CONFIG_I2C_SIS630 is not set
CONFIG_I2C_SIS96X=m
CONFIG_I2C_VIA=m
CONFIG_I2C_VIAPRO=m

#
# ACPI drivers
#
CONFIG_I2C_SCMI=m

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
# CONFIG_I2C_CBUS_GPIO is not set
CONFIG_I2C_DESIGNWARE_CORE=m
# CONFIG_I2C_DESIGNWARE_SLAVE is not set
CONFIG_I2C_DESIGNWARE_PLATFORM=m
# CONFIG_I2C_DESIGNWARE_AMDPSP is not set
CONFIG_I2C_DESIGNWARE_BAYTRAIL=y
# CONFIG_I2C_DESIGNWARE_PCI is not set
# CONFIG_I2C_EMEV2 is not set
# CONFIG_I2C_GPIO is not set
# CONFIG_I2C_OCORES is not set
CONFIG_I2C_PCA_PLATFORM=m
CONFIG_I2C_SIMTEC=m
# CONFIG_I2C_XILINX is not set

#
# External I2C/SMBus adapter drivers
#
# CONFIG_I2C_DIOLAN_U2C is not set
# CONFIG_I2C_CP2615 is not set
CONFIG_I2C_PARPORT=m
# CONFIG_I2C_PCI1XXXX is not set
# CONFIG_I2C_ROBOTFUZZ_OSIF is not set
# CONFIG_I2C_TAOS_EVM is not set
# CONFIG_I2C_TINY_USB is not set

#
# Other I2C/SMBus bus drivers
#
CONFIG_I2C_MLXCPLD=m
# CONFIG_I2C_VIRTIO is not set
# end of I2C Hardware Bus support

CONFIG_I2C_STUB=m
# CONFIG_I2C_SLAVE is not set
# CONFIG_I2C_DEBUG_CORE is not set
# CONFIG_I2C_DEBUG_ALGO is not set
# CONFIG_I2C_DEBUG_BUS is not set
# end of I2C support

# CONFIG_I3C is not set
CONFIG_SPI=y
# CONFIG_SPI_DEBUG is not set
CONFIG_SPI_MASTER=y
# CONFIG_SPI_MEM is not set

#
# SPI Master Controller Drivers
#
# CONFIG_SPI_ALTERA is not set
# CONFIG_SPI_AXI_SPI_ENGINE is not set
# CONFIG_SPI_BITBANG is not set
# CONFIG_SPI_BUTTERFLY is not set
# CONFIG_SPI_CADENCE is not set
# CONFIG_SPI_DESIGNWARE is not set
# CONFIG_SPI_NXP_FLEXSPI is not set
# CONFIG_SPI_GPIO is not set
# CONFIG_SPI_LM70_LLP is not set
# CONFIG_SPI_MICROCHIP_CORE is not set
# CONFIG_SPI_MICROCHIP_CORE_QSPI is not set
# CONFIG_SPI_LANTIQ_SSC is not set
# CONFIG_SPI_OC_TINY is not set
# CONFIG_SPI_PCI1XXXX is not set
# CONFIG_SPI_PXA2XX is not set
# CONFIG_SPI_ROCKCHIP is not set
# CONFIG_SPI_SC18IS602 is not set
# CONFIG_SPI_SIFIVE is not set
# CONFIG_SPI_MXIC is not set
# CONFIG_SPI_XCOMM is not set
# CONFIG_SPI_XILINX is not set
# CONFIG_SPI_ZYNQMP_GQSPI is not set
# CONFIG_SPI_AMD is not set

#
# SPI Multiplexer support
#
# CONFIG_SPI_MUX is not set

#
# SPI Protocol Masters
#
# CONFIG_SPI_SPIDEV is not set
# CONFIG_SPI_LOOPBACK_TEST is not set
# CONFIG_SPI_TLE62X0 is not set
# CONFIG_SPI_SLAVE is not set
CONFIG_SPI_DYNAMIC=y
# CONFIG_SPMI is not set
# CONFIG_HSI is not set
CONFIG_PPS=y
# CONFIG_PPS_DEBUG is not set

#
# PPS clients support
#
# CONFIG_PPS_CLIENT_KTIMER is not set
CONFIG_PPS_CLIENT_LDISC=m
CONFIG_PPS_CLIENT_PARPORT=m
CONFIG_PPS_CLIENT_GPIO=m

#
# PPS generators support
#

#
# PTP clock support
#
CONFIG_PTP_1588_CLOCK=y
CONFIG_PTP_1588_CLOCK_OPTIONAL=y
# CONFIG_DP83640_PHY is not set
# CONFIG_PTP_1588_CLOCK_INES is not set
CONFIG_PTP_1588_CLOCK_KVM=m
# CONFIG_PTP_1588_CLOCK_IDT82P33 is not set
# CONFIG_PTP_1588_CLOCK_IDTCM is not set
# CONFIG_PTP_1588_CLOCK_VMW is not set
# end of PTP clock support

CONFIG_PINCTRL=y
# CONFIG_DEBUG_PINCTRL is not set
# CONFIG_PINCTRL_AMD is not set
# CONFIG_PINCTRL_CY8C95X0 is not set
# CONFIG_PINCTRL_MCP23S08 is not set
# CONFIG_PINCTRL_SX150X is not set

#
# Intel pinctrl drivers
#
# CONFIG_PINCTRL_BAYTRAIL is not set
# CONFIG_PINCTRL_CHERRYVIEW is not set
# CONFIG_PINCTRL_LYNXPOINT is not set
# CONFIG_PINCTRL_ALDERLAKE is not set
# CONFIG_PINCTRL_BROXTON is not set
# CONFIG_PINCTRL_CANNONLAKE is not set
# CONFIG_PINCTRL_CEDARFORK is not set
# CONFIG_PINCTRL_DENVERTON is not set
# CONFIG_PINCTRL_ELKHARTLAKE is not set
# CONFIG_PINCTRL_EMMITSBURG is not set
# CONFIG_PINCTRL_GEMINILAKE is not set
# CONFIG_PINCTRL_ICELAKE is not set
# CONFIG_PINCTRL_JASPERLAKE is not set
# CONFIG_PINCTRL_LAKEFIELD is not set
# CONFIG_PINCTRL_LEWISBURG is not set
# CONFIG_PINCTRL_METEORLAKE is not set
# CONFIG_PINCTRL_SUNRISEPOINT is not set
# CONFIG_PINCTRL_TIGERLAKE is not set
# end of Intel pinctrl drivers

#
# Renesas pinctrl drivers
#
# end of Renesas pinctrl drivers

CONFIG_GPIOLIB=y
CONFIG_GPIOLIB_FASTPATH_LIMIT=512
CONFIG_GPIO_ACPI=y
# CONFIG_DEBUG_GPIO is not set
CONFIG_GPIO_SYSFS=y
CONFIG_GPIO_CDEV=y
CONFIG_GPIO_CDEV_V1=y

#
# Memory mapped GPIO drivers
#
# CONFIG_GPIO_AMDPT is not set
# CONFIG_GPIO_DWAPB is not set
# CONFIG_GPIO_EXAR is not set
# CONFIG_GPIO_GENERIC_PLATFORM is not set
CONFIG_GPIO_ICH=m
# CONFIG_GPIO_MB86S7X is not set
# CONFIG_GPIO_VX855 is not set
# CONFIG_GPIO_AMD_FCH is not set
# end of Memory mapped GPIO drivers

#
# Port-mapped I/O GPIO drivers
#
# CONFIG_GPIO_F7188X is not set
# CONFIG_GPIO_IT87 is not set
# CONFIG_GPIO_SCH is not set
# CONFIG_GPIO_SCH311X is not set
# CONFIG_GPIO_WINBOND is not set
# CONFIG_GPIO_WS16C48 is not set
# end of Port-mapped I/O GPIO drivers

#
# I2C GPIO expanders
#
# CONFIG_GPIO_MAX7300 is not set
# CONFIG_GPIO_MAX732X is not set
# CONFIG_GPIO_PCA953X is not set
# CONFIG_GPIO_PCA9570 is not set
# CONFIG_GPIO_PCF857X is not set
# CONFIG_GPIO_TPIC2810 is not set
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
# CONFIG_GPIO_AMD8111 is not set
# CONFIG_GPIO_BT8XX is not set
# CONFIG_GPIO_ML_IOH is not set
# CONFIG_GPIO_PCI_IDIO_16 is not set
# CONFIG_GPIO_PCIE_IDIO_24 is not set
# CONFIG_GPIO_RDC321X is not set
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
# CONFIG_GPIO_MAX3191X is not set
# CONFIG_GPIO_MAX7301 is not set
# CONFIG_GPIO_MC33880 is not set
# CONFIG_GPIO_PISOSR is not set
# CONFIG_GPIO_XRA1403 is not set
# end of SPI GPIO expanders

#
# USB GPIO expanders
#
# end of USB GPIO expanders

#
# Virtual GPIO drivers
#
# CONFIG_GPIO_AGGREGATOR is not set
# CONFIG_GPIO_LATCH is not set
# CONFIG_GPIO_MOCKUP is not set
# CONFIG_GPIO_VIRTIO is not set
# CONFIG_GPIO_SIM is not set
# end of Virtual GPIO drivers

# CONFIG_W1 is not set
CONFIG_POWER_RESET=y
# CONFIG_POWER_RESET_RESTART is not set
CONFIG_POWER_SUPPLY=y
# CONFIG_POWER_SUPPLY_DEBUG is not set
CONFIG_POWER_SUPPLY_HWMON=y
# CONFIG_PDA_POWER is not set
# CONFIG_IP5XXX_POWER is not set
# CONFIG_TEST_POWER is not set
# CONFIG_CHARGER_ADP5061 is not set
# CONFIG_BATTERY_CW2015 is not set
# CONFIG_BATTERY_DS2780 is not set
# CONFIG_BATTERY_DS2781 is not set
# CONFIG_BATTERY_DS2782 is not set
# CONFIG_BATTERY_SAMSUNG_SDI is not set
# CONFIG_BATTERY_SBS is not set
# CONFIG_CHARGER_SBS is not set
# CONFIG_MANAGER_SBS is not set
# CONFIG_BATTERY_BQ27XXX is not set
# CONFIG_BATTERY_MAX17040 is not set
# CONFIG_BATTERY_MAX17042 is not set
# CONFIG_CHARGER_MAX8903 is not set
# CONFIG_CHARGER_LP8727 is not set
# CONFIG_CHARGER_GPIO is not set
# CONFIG_CHARGER_LT3651 is not set
# CONFIG_CHARGER_LTC4162L is not set
# CONFIG_CHARGER_MAX77976 is not set
# CONFIG_CHARGER_BQ2415X is not set
# CONFIG_CHARGER_BQ24257 is not set
# CONFIG_CHARGER_BQ24735 is not set
# CONFIG_CHARGER_BQ2515X is not set
# CONFIG_CHARGER_BQ25890 is not set
# CONFIG_CHARGER_BQ25980 is not set
# CONFIG_CHARGER_BQ256XX is not set
# CONFIG_BATTERY_GAUGE_LTC2941 is not set
# CONFIG_BATTERY_GOLDFISH is not set
# CONFIG_BATTERY_RT5033 is not set
# CONFIG_CHARGER_RT9455 is not set
# CONFIG_CHARGER_BD99954 is not set
# CONFIG_BATTERY_UG3105 is not set
CONFIG_HWMON=y
CONFIG_HWMON_VID=m
# CONFIG_HWMON_DEBUG_CHIP is not set

#
# Native drivers
#
CONFIG_SENSORS_ABITUGURU=m
CONFIG_SENSORS_ABITUGURU3=m
# CONFIG_SENSORS_AD7314 is not set
CONFIG_SENSORS_AD7414=m
CONFIG_SENSORS_AD7418=m
CONFIG_SENSORS_ADM1025=m
CONFIG_SENSORS_ADM1026=m
CONFIG_SENSORS_ADM1029=m
CONFIG_SENSORS_ADM1031=m
# CONFIG_SENSORS_ADM1177 is not set
CONFIG_SENSORS_ADM9240=m
CONFIG_SENSORS_ADT7X10=m
# CONFIG_SENSORS_ADT7310 is not set
CONFIG_SENSORS_ADT7410=m
CONFIG_SENSORS_ADT7411=m
CONFIG_SENSORS_ADT7462=m
CONFIG_SENSORS_ADT7470=m
CONFIG_SENSORS_ADT7475=m
# CONFIG_SENSORS_AHT10 is not set
# CONFIG_SENSORS_AQUACOMPUTER_D5NEXT is not set
# CONFIG_SENSORS_AS370 is not set
CONFIG_SENSORS_ASC7621=m
# CONFIG_SENSORS_AXI_FAN_CONTROL is not set
CONFIG_SENSORS_K8TEMP=m
CONFIG_SENSORS_APPLESMC=m
CONFIG_SENSORS_ASB100=m
CONFIG_SENSORS_ATXP1=m
# CONFIG_SENSORS_CORSAIR_CPRO is not set
# CONFIG_SENSORS_CORSAIR_PSU is not set
# CONFIG_SENSORS_DRIVETEMP is not set
CONFIG_SENSORS_DS620=m
CONFIG_SENSORS_DS1621=m
# CONFIG_SENSORS_DELL_SMM is not set
CONFIG_SENSORS_I5K_AMB=m
CONFIG_SENSORS_F71805F=m
CONFIG_SENSORS_F71882FG=m
CONFIG_SENSORS_F75375S=m
CONFIG_SENSORS_FSCHMD=m
# CONFIG_SENSORS_FTSTEUTATES is not set
CONFIG_SENSORS_GL518SM=m
CONFIG_SENSORS_GL520SM=m
CONFIG_SENSORS_G760A=m
# CONFIG_SENSORS_G762 is not set
# CONFIG_SENSORS_HIH6130 is not set
CONFIG_SENSORS_IBMAEM=m
CONFIG_SENSORS_IBMPEX=m
CONFIG_SENSORS_I5500=m
CONFIG_SENSORS_CORETEMP=m
CONFIG_SENSORS_IT87=m
CONFIG_SENSORS_JC42=m
# CONFIG_SENSORS_POWR1220 is not set
CONFIG_SENSORS_LINEAGE=m
# CONFIG_SENSORS_LTC2945 is not set
# CONFIG_SENSORS_LTC2947_I2C is not set
# CONFIG_SENSORS_LTC2947_SPI is not set
# CONFIG_SENSORS_LTC2990 is not set
# CONFIG_SENSORS_LTC2992 is not set
CONFIG_SENSORS_LTC4151=m
CONFIG_SENSORS_LTC4215=m
# CONFIG_SENSORS_LTC4222 is not set
CONFIG_SENSORS_LTC4245=m
# CONFIG_SENSORS_LTC4260 is not set
CONFIG_SENSORS_LTC4261=m
# CONFIG_SENSORS_MAX1111 is not set
# CONFIG_SENSORS_MAX127 is not set
CONFIG_SENSORS_MAX16065=m
CONFIG_SENSORS_MAX1619=m
CONFIG_SENSORS_MAX1668=m
CONFIG_SENSORS_MAX197=m
# CONFIG_SENSORS_MAX31722 is not set
# CONFIG_SENSORS_MAX31730 is not set
# CONFIG_SENSORS_MAX31760 is not set
# CONFIG_SENSORS_MAX6620 is not set
# CONFIG_SENSORS_MAX6621 is not set
CONFIG_SENSORS_MAX6639=m
CONFIG_SENSORS_MAX6650=m
CONFIG_SENSORS_MAX6697=m
# CONFIG_SENSORS_MAX31790 is not set
CONFIG_SENSORS_MCP3021=m
# CONFIG_SENSORS_MLXREG_FAN is not set
# CONFIG_SENSORS_TC654 is not set
# CONFIG_SENSORS_TPS23861 is not set
# CONFIG_SENSORS_MR75203 is not set
# CONFIG_SENSORS_ADCXX is not set
CONFIG_SENSORS_LM63=m
# CONFIG_SENSORS_LM70 is not set
CONFIG_SENSORS_LM73=m
CONFIG_SENSORS_LM75=m
CONFIG_SENSORS_LM77=m
CONFIG_SENSORS_LM78=m
CONFIG_SENSORS_LM80=m
CONFIG_SENSORS_LM83=m
CONFIG_SENSORS_LM85=m
CONFIG_SENSORS_LM87=m
CONFIG_SENSORS_LM90=m
CONFIG_SENSORS_LM92=m
CONFIG_SENSORS_LM93=m
CONFIG_SENSORS_LM95234=m
CONFIG_SENSORS_LM95241=m
CONFIG_SENSORS_LM95245=m
CONFIG_SENSORS_PC87360=m
CONFIG_SENSORS_PC87427=m
# CONFIG_SENSORS_NCT6683 is not set
CONFIG_SENSORS_NCT6775_CORE=m
CONFIG_SENSORS_NCT6775=m
# CONFIG_SENSORS_NCT6775_I2C is not set
# CONFIG_SENSORS_NCT7802 is not set
# CONFIG_SENSORS_NCT7904 is not set
# CONFIG_SENSORS_NPCM7XX is not set
# CONFIG_SENSORS_NZXT_KRAKEN2 is not set
# CONFIG_SENSORS_NZXT_SMART2 is not set
# CONFIG_SENSORS_OCC_P8_I2C is not set
# CONFIG_SENSORS_OXP is not set
CONFIG_SENSORS_PCF8591=m
CONFIG_PMBUS=m
CONFIG_SENSORS_PMBUS=m
# CONFIG_SENSORS_ADM1266 is not set
CONFIG_SENSORS_ADM1275=m
# CONFIG_SENSORS_BEL_PFE is not set
# CONFIG_SENSORS_BPA_RS600 is not set
# CONFIG_SENSORS_DELTA_AHE50DC_FAN is not set
# CONFIG_SENSORS_FSP_3Y is not set
# CONFIG_SENSORS_IBM_CFFPS is not set
# CONFIG_SENSORS_DPS920AB is not set
# CONFIG_SENSORS_INSPUR_IPSPS is not set
# CONFIG_SENSORS_IR35221 is not set
# CONFIG_SENSORS_IR36021 is not set
# CONFIG_SENSORS_IR38064 is not set
# CONFIG_SENSORS_IRPS5401 is not set
# CONFIG_SENSORS_ISL68137 is not set
CONFIG_SENSORS_LM25066=m
# CONFIG_SENSORS_LT7182S is not set
CONFIG_SENSORS_LTC2978=m
# CONFIG_SENSORS_LTC3815 is not set
# CONFIG_SENSORS_MAX15301 is not set
CONFIG_SENSORS_MAX16064=m
# CONFIG_SENSORS_MAX16601 is not set
# CONFIG_SENSORS_MAX20730 is not set
# CONFIG_SENSORS_MAX20751 is not set
# CONFIG_SENSORS_MAX31785 is not set
CONFIG_SENSORS_MAX34440=m
CONFIG_SENSORS_MAX8688=m
# CONFIG_SENSORS_MP2888 is not set
# CONFIG_SENSORS_MP2975 is not set
# CONFIG_SENSORS_MP5023 is not set
# CONFIG_SENSORS_PIM4328 is not set
# CONFIG_SENSORS_PLI1209BC is not set
# CONFIG_SENSORS_PM6764TR is not set
# CONFIG_SENSORS_PXE1610 is not set
# CONFIG_SENSORS_Q54SJ108A2 is not set
# CONFIG_SENSORS_STPDDC60 is not set
# CONFIG_SENSORS_TPS40422 is not set
# CONFIG_SENSORS_TPS53679 is not set
# CONFIG_SENSORS_TPS546D24 is not set
CONFIG_SENSORS_UCD9000=m
CONFIG_SENSORS_UCD9200=m
# CONFIG_SENSORS_XDPE152 is not set
# CONFIG_SENSORS_XDPE122 is not set
CONFIG_SENSORS_ZL6100=m
# CONFIG_SENSORS_SBTSI is not set
# CONFIG_SENSORS_SBRMI is not set
CONFIG_SENSORS_SHT15=m
CONFIG_SENSORS_SHT21=m
# CONFIG_SENSORS_SHT3x is not set
# CONFIG_SENSORS_SHT4x is not set
# CONFIG_SENSORS_SHTC1 is not set
CONFIG_SENSORS_SIS5595=m
CONFIG_SENSORS_DME1737=m
CONFIG_SENSORS_EMC1403=m
# CONFIG_SENSORS_EMC2103 is not set
# CONFIG_SENSORS_EMC2305 is not set
CONFIG_SENSORS_EMC6W201=m
CONFIG_SENSORS_SMSC47M1=m
CONFIG_SENSORS_SMSC47M192=m
CONFIG_SENSORS_SMSC47B397=m
CONFIG_SENSORS_SCH56XX_COMMON=m
CONFIG_SENSORS_SCH5627=m
CONFIG_SENSORS_SCH5636=m
# CONFIG_SENSORS_STTS751 is not set
# CONFIG_SENSORS_SMM665 is not set
# CONFIG_SENSORS_ADC128D818 is not set
CONFIG_SENSORS_ADS7828=m
# CONFIG_SENSORS_ADS7871 is not set
CONFIG_SENSORS_AMC6821=m
CONFIG_SENSORS_INA209=m
CONFIG_SENSORS_INA2XX=m
# CONFIG_SENSORS_INA238 is not set
# CONFIG_SENSORS_INA3221 is not set
# CONFIG_SENSORS_TC74 is not set
CONFIG_SENSORS_THMC50=m
CONFIG_SENSORS_TMP102=m
# CONFIG_SENSORS_TMP103 is not set
# CONFIG_SENSORS_TMP108 is not set
CONFIG_SENSORS_TMP401=m
CONFIG_SENSORS_TMP421=m
# CONFIG_SENSORS_TMP464 is not set
# CONFIG_SENSORS_TMP513 is not set
CONFIG_SENSORS_VIA_CPUTEMP=m
CONFIG_SENSORS_VIA686A=m
CONFIG_SENSORS_VT1211=m
CONFIG_SENSORS_VT8231=m
# CONFIG_SENSORS_W83773G is not set
CONFIG_SENSORS_W83781D=m
CONFIG_SENSORS_W83791D=m
CONFIG_SENSORS_W83792D=m
CONFIG_SENSORS_W83793=m
CONFIG_SENSORS_W83795=m
# CONFIG_SENSORS_W83795_FANCTRL is not set
CONFIG_SENSORS_W83L785TS=m
CONFIG_SENSORS_W83L786NG=m
CONFIG_SENSORS_W83627HF=m
CONFIG_SENSORS_W83627EHF=m
# CONFIG_SENSORS_XGENE is not set

#
# ACPI drivers
#
CONFIG_SENSORS_ACPI_POWER=m
CONFIG_SENSORS_ATK0110=m
# CONFIG_SENSORS_ASUS_WMI is not set
# CONFIG_SENSORS_ASUS_EC is not set
CONFIG_THERMAL=y
# CONFIG_THERMAL_NETLINK is not set
# CONFIG_THERMAL_STATISTICS is not set
CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=0
CONFIG_THERMAL_HWMON=y
CONFIG_THERMAL_WRITABLE_TRIPS=y
CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y
# CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE is not set
# CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE is not set
CONFIG_THERMAL_GOV_FAIR_SHARE=y
CONFIG_THERMAL_GOV_STEP_WISE=y
CONFIG_THERMAL_GOV_BANG_BANG=y
CONFIG_THERMAL_GOV_USER_SPACE=y
# CONFIG_THERMAL_EMULATION is not set

#
# Intel thermal drivers
#
CONFIG_INTEL_POWERCLAMP=m
CONFIG_X86_THERMAL_VECTOR=y
CONFIG_X86_PKG_TEMP_THERMAL=m
# CONFIG_INTEL_SOC_DTS_THERMAL is not set

#
# ACPI INT340X thermal drivers
#
# CONFIG_INT340X_THERMAL is not set
# end of ACPI INT340X thermal drivers

CONFIG_INTEL_PCH_THERMAL=m
# CONFIG_INTEL_TCC_COOLING is not set
# CONFIG_INTEL_MENLOW is not set
# CONFIG_INTEL_HFI_THERMAL is not set
# end of Intel thermal drivers

CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_CORE=y
# CONFIG_WATCHDOG_NOWAYOUT is not set
CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED=y
CONFIG_WATCHDOG_OPEN_TIMEOUT=0
CONFIG_WATCHDOG_SYSFS=y
# CONFIG_WATCHDOG_HRTIMER_PRETIMEOUT is not set

#
# Watchdog Pretimeout Governors
#
# CONFIG_WATCHDOG_PRETIMEOUT_GOV is not set

#
# Watchdog Device Drivers
#
CONFIG_SOFT_WATCHDOG=m
CONFIG_WDAT_WDT=m
# CONFIG_XILINX_WATCHDOG is not set
# CONFIG_ZIIRAVE_WATCHDOG is not set
# CONFIG_MLX_WDT is not set
# CONFIG_CADENCE_WATCHDOG is not set
# CONFIG_DW_WATCHDOG is not set
# CONFIG_MAX63XX_WATCHDOG is not set
# CONFIG_ACQUIRE_WDT is not set
# CONFIG_ADVANTECH_WDT is not set
# CONFIG_ADVANTECH_EC_WDT is not set
CONFIG_ALIM1535_WDT=m
CONFIG_ALIM7101_WDT=m
# CONFIG_EBC_C384_WDT is not set
# CONFIG_EXAR_WDT is not set
CONFIG_F71808E_WDT=m
# CONFIG_SP5100_TCO is not set
CONFIG_SBC_FITPC2_WATCHDOG=m
# CONFIG_EUROTECH_WDT is not set
CONFIG_IB700_WDT=m
CONFIG_IBMASR=m
# CONFIG_WAFER_WDT is not set
CONFIG_I6300ESB_WDT=y
CONFIG_IE6XX_WDT=m
CONFIG_ITCO_WDT=y
CONFIG_ITCO_VENDOR_SUPPORT=y
CONFIG_IT8712F_WDT=m
CONFIG_IT87_WDT=m
CONFIG_HP_WATCHDOG=m
CONFIG_HPWDT_NMI_DECODING=y
# CONFIG_SC1200_WDT is not set
# CONFIG_PC87413_WDT is not set
CONFIG_NV_TCO=m
# CONFIG_60XX_WDT is not set
# CONFIG_CPU5_WDT is not set
CONFIG_SMSC_SCH311X_WDT=m
# CONFIG_SMSC37B787_WDT is not set
# CONFIG_TQMX86_WDT is not set
CONFIG_VIA_WDT=m
CONFIG_W83627HF_WDT=m
CONFIG_W83877F_WDT=m
CONFIG_W83977F_WDT=m
CONFIG_MACHZ_WDT=m
# CONFIG_SBC_EPX_C3_WATCHDOG is not set
CONFIG_INTEL_MEI_WDT=m
# CONFIG_NI903X_WDT is not set
# CONFIG_NIC7018_WDT is not set
# CONFIG_MEN_A21_WDT is not set

#
# PCI-based Watchdog Cards
#
CONFIG_PCIPCWATCHDOG=m
CONFIG_WDTPCI=m

#
# USB-based Watchdog Cards
#
# CONFIG_USBPCWATCHDOG is not set
CONFIG_SSB_POSSIBLE=y
# CONFIG_SSB is not set
CONFIG_BCMA_POSSIBLE=y
CONFIG_BCMA=m
CONFIG_BCMA_HOST_PCI_POSSIBLE=y
CONFIG_BCMA_HOST_PCI=y
# CONFIG_BCMA_HOST_SOC is not set
CONFIG_BCMA_DRIVER_PCI=y
CONFIG_BCMA_DRIVER_GMAC_CMN=y
CONFIG_BCMA_DRIVER_GPIO=y
# CONFIG_BCMA_DEBUG is not set

#
# Multifunction device drivers
#
CONFIG_MFD_CORE=y
# CONFIG_MFD_AS3711 is not set
# CONFIG_MFD_SMPRO is not set
# CONFIG_PMIC_ADP5520 is not set
# CONFIG_MFD_AAT2870_CORE is not set
# CONFIG_MFD_BCM590XX is not set
# CONFIG_MFD_BD9571MWV is not set
# CONFIG_MFD_AXP20X_I2C is not set
# CONFIG_MFD_MADERA is not set
# CONFIG_PMIC_DA903X is not set
# CONFIG_MFD_DA9052_SPI is not set
# CONFIG_MFD_DA9052_I2C is not set
# CONFIG_MFD_DA9055 is not set
# CONFIG_MFD_DA9062 is not set
# CONFIG_MFD_DA9063 is not set
# CONFIG_MFD_DA9150 is not set
# CONFIG_MFD_DLN2 is not set
# CONFIG_MFD_MC13XXX_SPI is not set
# CONFIG_MFD_MC13XXX_I2C is not set
# CONFIG_MFD_MP2629 is not set
# CONFIG_HTC_PASIC3 is not set
# CONFIG_MFD_INTEL_QUARK_I2C_GPIO is not set
CONFIG_LPC_ICH=m
CONFIG_LPC_SCH=m
CONFIG_MFD_INTEL_LPSS=y
CONFIG_MFD_INTEL_LPSS_ACPI=y
CONFIG_MFD_INTEL_LPSS_PCI=y
# CONFIG_MFD_INTEL_PMC_BXT is not set
# CONFIG_MFD_IQS62X is not set
# CONFIG_MFD_JANZ_CMODIO is not set
# CONFIG_MFD_KEMPLD is not set
# CONFIG_MFD_88PM800 is not set
# CONFIG_MFD_88PM805 is not set
# CONFIG_MFD_88PM860X is not set
# CONFIG_MFD_MAX14577 is not set
# CONFIG_MFD_MAX77693 is not set
# CONFIG_MFD_MAX77843 is not set
# CONFIG_MFD_MAX8907 is not set
# CONFIG_MFD_MAX8925 is not set
# CONFIG_MFD_MAX8997 is not set
# CONFIG_MFD_MAX8998 is not set
# CONFIG_MFD_MT6360 is not set
# CONFIG_MFD_MT6370 is not set
# CONFIG_MFD_MT6397 is not set
# CONFIG_MFD_MENF21BMC is not set
# CONFIG_MFD_OCELOT is not set
# CONFIG_EZX_PCAP is not set
# CONFIG_MFD_VIPERBOARD is not set
# CONFIG_MFD_RETU is not set
# CONFIG_MFD_PCF50633 is not set
# CONFIG_MFD_SY7636A is not set
# CONFIG_MFD_RDC321X is not set
# CONFIG_MFD_RT4831 is not set
# CONFIG_MFD_RT5033 is not set
# CONFIG_MFD_RT5120 is not set
# CONFIG_MFD_RC5T583 is not set
# CONFIG_MFD_SI476X_CORE is not set
CONFIG_MFD_SM501=m
CONFIG_MFD_SM501_GPIO=y
# CONFIG_MFD_SKY81452 is not set
# CONFIG_MFD_SYSCON is not set
# CONFIG_MFD_TI_AM335X_TSCADC is not set
# CONFIG_MFD_LP3943 is not set
# CONFIG_MFD_LP8788 is not set
# CONFIG_MFD_TI_LMU is not set
# CONFIG_MFD_PALMAS is not set
# CONFIG_TPS6105X is not set
# CONFIG_TPS65010 is not set
# CONFIG_TPS6507X is not set
# CONFIG_MFD_TPS65086 is not set
# CONFIG_MFD_TPS65090 is not set
# CONFIG_MFD_TI_LP873X is not set
# CONFIG_MFD_TPS6586X is not set
# CONFIG_MFD_TPS65910 is not set
# CONFIG_MFD_TPS65912_I2C is not set
# CONFIG_MFD_TPS65912_SPI is not set
# CONFIG_TWL4030_CORE is not set
# CONFIG_TWL6040_CORE is not set
# CONFIG_MFD_WL1273_CORE is not set
# CONFIG_MFD_LM3533 is not set
# CONFIG_MFD_TQMX86 is not set
CONFIG_MFD_VX855=m
# CONFIG_MFD_ARIZONA_I2C is not set
# CONFIG_MFD_ARIZONA_SPI is not set
# CONFIG_MFD_WM8400 is not set
# CONFIG_MFD_WM831X_I2C is not set
# CONFIG_MFD_WM831X_SPI is not set
# CONFIG_MFD_WM8350_I2C is not set
# CONFIG_MFD_WM8994 is not set
# CONFIG_MFD_ATC260X_I2C is not set
# CONFIG_MFD_INTEL_M10_BMC is not set
# end of Multifunction device drivers

# CONFIG_REGULATOR is not set
CONFIG_RC_CORE=m
CONFIG_LIRC=y
CONFIG_RC_MAP=m
CONFIG_RC_DECODERS=y
CONFIG_IR_IMON_DECODER=m
CONFIG_IR_JVC_DECODER=m
CONFIG_IR_MCE_KBD_DECODER=m
CONFIG_IR_NEC_DECODER=m
CONFIG_IR_RC5_DECODER=m
CONFIG_IR_RC6_DECODER=m
# CONFIG_IR_RCMM_DECODER is not set
CONFIG_IR_SANYO_DECODER=m
# CONFIG_IR_SHARP_DECODER is not set
CONFIG_IR_SONY_DECODER=m
# CONFIG_IR_XMP_DECODER is not set
CONFIG_RC_DEVICES=y
CONFIG_IR_ENE=m
CONFIG_IR_FINTEK=m
# CONFIG_IR_IGORPLUGUSB is not set
# CONFIG_IR_IGUANA is not set
# CONFIG_IR_IMON is not set
# CONFIG_IR_IMON_RAW is not set
CONFIG_IR_ITE_CIR=m
# CONFIG_IR_MCEUSB is not set
CONFIG_IR_NUVOTON=m
# CONFIG_IR_REDRAT3 is not set
CONFIG_IR_SERIAL=m
CONFIG_IR_SERIAL_TRANSMITTER=y
# CONFIG_IR_STREAMZAP is not set
# CONFIG_IR_TOY is not set
# CONFIG_IR_TTUSBIR is not set
CONFIG_IR_WINBOND_CIR=m
# CONFIG_RC_ATI_REMOTE is not set
# CONFIG_RC_LOOPBACK is not set
# CONFIG_RC_XBOX_DVD is not set

#
# CEC support
#
# CONFIG_MEDIA_CEC_SUPPORT is not set
# end of CEC support

CONFIG_MEDIA_SUPPORT=m
CONFIG_MEDIA_SUPPORT_FILTER=y
CONFIG_MEDIA_SUBDRV_AUTOSELECT=y

#
# Media device types
#
# CONFIG_MEDIA_CAMERA_SUPPORT is not set
# CONFIG_MEDIA_ANALOG_TV_SUPPORT is not set
# CONFIG_MEDIA_DIGITAL_TV_SUPPORT is not set
# CONFIG_MEDIA_RADIO_SUPPORT is not set
# CONFIG_MEDIA_SDR_SUPPORT is not set
# CONFIG_MEDIA_PLATFORM_SUPPORT is not set
# CONFIG_MEDIA_TEST_SUPPORT is not set
# end of Media device types

#
# Media drivers
#

#
# Drivers filtered as selected at 'Filter media drivers'
#

#
# Media drivers
#
# CONFIG_MEDIA_USB_SUPPORT is not set
# CONFIG_MEDIA_PCI_SUPPORT is not set
# end of Media drivers

#
# Media ancillary drivers
#
# end of Media ancillary drivers

#
# Graphics support
#
CONFIG_APERTURE_HELPERS=y
CONFIG_VIDEO_NOMODESET=y
# CONFIG_AGP is not set
CONFIG_INTEL_GTT=m
CONFIG_VGA_SWITCHEROO=y
CONFIG_DRM=m
CONFIG_DRM_MIPI_DSI=y
CONFIG_DRM_USE_DYNAMIC_DEBUG=y
CONFIG_DRM_KMS_HELPER=m
# CONFIG_DRM_DEBUG_DP_MST_TOPOLOGY_REFS is not set
# CONFIG_DRM_DEBUG_MODESET_LOCK is not set
CONFIG_DRM_FBDEV_EMULATION=y
CONFIG_DRM_FBDEV_OVERALLOC=100
# CONFIG_DRM_FBDEV_LEAK_PHYS_SMEM is not set
CONFIG_DRM_LOAD_EDID_FIRMWARE=y
CONFIG_DRM_DISPLAY_HELPER=m
CONFIG_DRM_DISPLAY_DP_HELPER=y
CONFIG_DRM_DISPLAY_HDCP_HELPER=y
CONFIG_DRM_DISPLAY_HDMI_HELPER=y
CONFIG_DRM_DP_AUX_CHARDEV=y
# CONFIG_DRM_DP_CEC is not set
CONFIG_DRM_TTM=m
CONFIG_DRM_BUDDY=m
CONFIG_DRM_VRAM_HELPER=m
CONFIG_DRM_TTM_HELPER=m
CONFIG_DRM_GEM_SHMEM_HELPER=m

#
# I2C encoder or helper chips
#
CONFIG_DRM_I2C_CH7006=m
CONFIG_DRM_I2C_SIL164=m
# CONFIG_DRM_I2C_NXP_TDA998X is not set
# CONFIG_DRM_I2C_NXP_TDA9950 is not set
# end of I2C encoder or helper chips

#
# ARM devices
#
# end of ARM devices

# CONFIG_DRM_RADEON is not set
# CONFIG_DRM_AMDGPU is not set
# CONFIG_DRM_NOUVEAU is not set
CONFIG_DRM_I915=m
CONFIG_DRM_I915_FORCE_PROBE=""
CONFIG_DRM_I915_CAPTURE_ERROR=y
CONFIG_DRM_I915_COMPRESS_ERROR=y
CONFIG_DRM_I915_USERPTR=y
# CONFIG_DRM_I915_GVT_KVMGT is not set

#
# drm/i915 Debugging
#
# CONFIG_DRM_I915_WERROR is not set
# CONFIG_DRM_I915_DEBUG is not set
# CONFIG_DRM_I915_DEBUG_MMIO is not set
# CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS is not set
# CONFIG_DRM_I915_SW_FENCE_CHECK_DAG is not set
# CONFIG_DRM_I915_DEBUG_GUC is not set
# CONFIG_DRM_I915_SELFTEST is not set
# CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS is not set
# CONFIG_DRM_I915_DEBUG_VBLANK_EVADE is not set
# CONFIG_DRM_I915_DEBUG_RUNTIME_PM is not set
# end of drm/i915 Debugging

#
# drm/i915 Profile Guided Optimisation
#
CONFIG_DRM_I915_REQUEST_TIMEOUT=20000
CONFIG_DRM_I915_FENCE_TIMEOUT=10000
CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND=250
CONFIG_DRM_I915_HEARTBEAT_INTERVAL=2500
CONFIG_DRM_I915_PREEMPT_TIMEOUT=640
CONFIG_DRM_I915_PREEMPT_TIMEOUT_COMPUTE=7500
CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT=8000
CONFIG_DRM_I915_STOP_TIMEOUT=100
CONFIG_DRM_I915_TIMESLICE_DURATION=1
# end of drm/i915 Profile Guided Optimisation

# CONFIG_DRM_VGEM is not set
# CONFIG_DRM_VKMS is not set
# CONFIG_DRM_VMWGFX is not set
CONFIG_DRM_GMA500=m
# CONFIG_DRM_UDL is not set
CONFIG_DRM_AST=m
# CONFIG_DRM_MGAG200 is not set
CONFIG_DRM_QXL=m
CONFIG_DRM_VIRTIO_GPU=m
CONFIG_DRM_PANEL=y

#
# Display Panels
#
# CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN is not set
# CONFIG_DRM_PANEL_WIDECHIPS_WS2401 is not set
# end of Display Panels

CONFIG_DRM_BRIDGE=y
CONFIG_DRM_PANEL_BRIDGE=y

#
# Display Interface Bridges
#
# CONFIG_DRM_ANALOGIX_ANX78XX is not set
# end of Display Interface Bridges

# CONFIG_DRM_ETNAVIV is not set
CONFIG_DRM_BOCHS=m
CONFIG_DRM_CIRRUS_QEMU=m
# CONFIG_DRM_GM12U320 is not set
# CONFIG_DRM_PANEL_MIPI_DBI is not set
# CONFIG_DRM_SIMPLEDRM is not set
# CONFIG_TINYDRM_HX8357D is not set
# CONFIG_TINYDRM_ILI9163 is not set
# CONFIG_TINYDRM_ILI9225 is not set
# CONFIG_TINYDRM_ILI9341 is not set
# CONFIG_TINYDRM_ILI9486 is not set
# CONFIG_TINYDRM_MI0283QT is not set
# CONFIG_TINYDRM_REPAPER is not set
# CONFIG_TINYDRM_ST7586 is not set
# CONFIG_TINYDRM_ST7735R is not set
# CONFIG_DRM_VBOXVIDEO is not set
# CONFIG_DRM_GUD is not set
# CONFIG_DRM_SSD130X is not set
# CONFIG_DRM_LEGACY is not set
CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y
CONFIG_DRM_PRIVACY_SCREEN=y

#
# Frame buffer Devices
#
CONFIG_FB_CMDLINE=y
CONFIG_FB_NOTIFY=y
CONFIG_FB=y
# CONFIG_FIRMWARE_EDID is not set
CONFIG_FB_CFB_FILLRECT=y
CONFIG_FB_CFB_COPYAREA=y
CONFIG_FB_CFB_IMAGEBLIT=y
CONFIG_FB_SYS_FILLRECT=m
CONFIG_FB_SYS_COPYAREA=m
CONFIG_FB_SYS_IMAGEBLIT=m
# CONFIG_FB_FOREIGN_ENDIAN is not set
CONFIG_FB_SYS_FOPS=m
CONFIG_FB_DEFERRED_IO=y
# CONFIG_FB_MODE_HELPERS is not set
CONFIG_FB_TILEBLITTING=y

#
# Frame buffer hardware drivers
#
# CONFIG_FB_CIRRUS is not set
# CONFIG_FB_PM2 is not set
# CONFIG_FB_CYBER2000 is not set
# CONFIG_FB_ARC is not set
# CONFIG_FB_ASILIANT is not set
# CONFIG_FB_IMSTT is not set
# CONFIG_FB_VGA16 is not set
# CONFIG_FB_UVESA is not set
CONFIG_FB_VESA=y
CONFIG_FB_EFI=y
# CONFIG_FB_N411 is not set
# CONFIG_FB_HGA is not set
# CONFIG_FB_OPENCORES is not set
# CONFIG_FB_S1D13XXX is not set
# CONFIG_FB_NVIDIA is not set
# CONFIG_FB_RIVA is not set
# CONFIG_FB_I740 is not set
# CONFIG_FB_LE80578 is not set
# CONFIG_FB_MATROX is not set
# CONFIG_FB_RADEON is not set
# CONFIG_FB_ATY128 is not set
# CONFIG_FB_ATY is not set
# CONFIG_FB_S3 is not set
# CONFIG_FB_SAVAGE is not set
# CONFIG_FB_SIS is not set
# CONFIG_FB_VIA is not set
# CONFIG_FB_NEOMAGIC is not set
# CONFIG_FB_KYRO is not set
# CONFIG_FB_3DFX is not set
# CONFIG_FB_VOODOO1 is not set
# CONFIG_FB_VT8623 is not set
# CONFIG_FB_TRIDENT is not set
# CONFIG_FB_ARK is not set
# CONFIG_FB_PM3 is not set
# CONFIG_FB_CARMINE is not set
# CONFIG_FB_SM501 is not set
# CONFIG_FB_SMSCUFX is not set
# CONFIG_FB_UDL is not set
# CONFIG_FB_IBM_GXT4500 is not set
# CONFIG_FB_VIRTUAL is not set
# CONFIG_FB_METRONOME is not set
# CONFIG_FB_MB862XX is not set
# CONFIG_FB_SIMPLE is not set
# CONFIG_FB_SSD1307 is not set
# CONFIG_FB_SM712 is not set
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
CONFIG_LCD_CLASS_DEVICE=m
# CONFIG_LCD_L4F00242T03 is not set
# CONFIG_LCD_LMS283GF05 is not set
# CONFIG_LCD_LTV350QV is not set
# CONFIG_LCD_ILI922X is not set
# CONFIG_LCD_ILI9320 is not set
# CONFIG_LCD_TDO24M is not set
# CONFIG_LCD_VGG2432A4 is not set
CONFIG_LCD_PLATFORM=m
# CONFIG_LCD_AMS369FG06 is not set
# CONFIG_LCD_LMS501KF03 is not set
# CONFIG_LCD_HX8357 is not set
# CONFIG_LCD_OTM3225A is not set
CONFIG_BACKLIGHT_CLASS_DEVICE=y
# CONFIG_BACKLIGHT_KTD253 is not set
# CONFIG_BACKLIGHT_PWM is not set
CONFIG_BACKLIGHT_APPLE=m
# CONFIG_BACKLIGHT_QCOM_WLED is not set
# CONFIG_BACKLIGHT_SAHARA is not set
# CONFIG_BACKLIGHT_ADP8860 is not set
# CONFIG_BACKLIGHT_ADP8870 is not set
# CONFIG_BACKLIGHT_LM3630A is not set
# CONFIG_BACKLIGHT_LM3639 is not set
CONFIG_BACKLIGHT_LP855X=m
# CONFIG_BACKLIGHT_GPIO is not set
# CONFIG_BACKLIGHT_LV5207LP is not set
# CONFIG_BACKLIGHT_BD6107 is not set
# CONFIG_BACKLIGHT_ARCXCNN is not set
# end of Backlight & LCD device support

CONFIG_HDMI=y

#
# Console display driver support
#
CONFIG_VGA_CONSOLE=y
CONFIG_DUMMY_CONSOLE=y
CONFIG_DUMMY_CONSOLE_COLUMNS=80
CONFIG_DUMMY_CONSOLE_ROWS=25
CONFIG_FRAMEBUFFER_CONSOLE=y
# CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION is not set
CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
# CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is not set
# end of Console display driver support

CONFIG_LOGO=y
# CONFIG_LOGO_LINUX_MONO is not set
# CONFIG_LOGO_LINUX_VGA16 is not set
CONFIG_LOGO_LINUX_CLUT224=y
# end of Graphics support

# CONFIG_DRM_ACCEL is not set
# CONFIG_SOUND is not set

#
# HID support
#
CONFIG_HID=y
CONFIG_HID_BATTERY_STRENGTH=y
CONFIG_HIDRAW=y
CONFIG_UHID=m
CONFIG_HID_GENERIC=y

#
# Special HID drivers
#
CONFIG_HID_A4TECH=m
# CONFIG_HID_ACCUTOUCH is not set
CONFIG_HID_ACRUX=m
# CONFIG_HID_ACRUX_FF is not set
CONFIG_HID_APPLE=m
# CONFIG_HID_APPLEIR is not set
CONFIG_HID_ASUS=m
CONFIG_HID_AUREAL=m
CONFIG_HID_BELKIN=m
# CONFIG_HID_BETOP_FF is not set
# CONFIG_HID_BIGBEN_FF is not set
CONFIG_HID_CHERRY=m
# CONFIG_HID_CHICONY is not set
# CONFIG_HID_CORSAIR is not set
# CONFIG_HID_COUGAR is not set
# CONFIG_HID_MACALLY is not set
CONFIG_HID_CMEDIA=m
# CONFIG_HID_CP2112 is not set
# CONFIG_HID_CREATIVE_SB0540 is not set
CONFIG_HID_CYPRESS=m
CONFIG_HID_DRAGONRISE=m
# CONFIG_DRAGONRISE_FF is not set
# CONFIG_HID_EMS_FF is not set
# CONFIG_HID_ELAN is not set
CONFIG_HID_ELECOM=m
# CONFIG_HID_ELO is not set
CONFIG_HID_EZKEY=m
# CONFIG_HID_FT260 is not set
CONFIG_HID_GEMBIRD=m
CONFIG_HID_GFRM=m
# CONFIG_HID_GLORIOUS is not set
# CONFIG_HID_HOLTEK is not set
# CONFIG_HID_VIVALDI is not set
# CONFIG_HID_GT683R is not set
CONFIG_HID_KEYTOUCH=m
CONFIG_HID_KYE=m
# CONFIG_HID_UCLOGIC is not set
CONFIG_HID_WALTOP=m
# CONFIG_HID_VIEWSONIC is not set
# CONFIG_HID_VRC2 is not set
# CONFIG_HID_XIAOMI is not set
CONFIG_HID_GYRATION=m
CONFIG_HID_ICADE=m
CONFIG_HID_ITE=m
CONFIG_HID_JABRA=m
CONFIG_HID_TWINHAN=m
CONFIG_HID_KENSINGTON=m
CONFIG_HID_LCPOWER=m
CONFIG_HID_LED=m
CONFIG_HID_LENOVO=m
# CONFIG_HID_LETSKETCH is not set
CONFIG_HID_LOGITECH=m
CONFIG_HID_LOGITECH_DJ=m
CONFIG_HID_LOGITECH_HIDPP=m
# CONFIG_LOGITECH_FF is not set
# CONFIG_LOGIRUMBLEPAD2_FF is not set
# CONFIG_LOGIG940_FF is not set
# CONFIG_LOGIWHEELS_FF is not set
CONFIG_HID_MAGICMOUSE=y
# CONFIG_HID_MALTRON is not set
# CONFIG_HID_MAYFLASH is not set
# CONFIG_HID_MEGAWORLD_FF is not set
# CONFIG_HID_REDRAGON is not set
CONFIG_HID_MICROSOFT=m
CONFIG_HID_MONTEREY=m
CONFIG_HID_MULTITOUCH=m
# CONFIG_HID_NINTENDO is not set
CONFIG_HID_NTI=m
# CONFIG_HID_NTRIG is not set
CONFIG_HID_ORTEK=m
CONFIG_HID_PANTHERLORD=m
# CONFIG_PANTHERLORD_FF is not set
# CONFIG_HID_PENMOUNT is not set
CONFIG_HID_PETALYNX=m
CONFIG_HID_PICOLCD=m
CONFIG_HID_PICOLCD_FB=y
CONFIG_HID_PICOLCD_BACKLIGHT=y
CONFIG_HID_PICOLCD_LCD=y
CONFIG_HID_PICOLCD_LEDS=y
CONFIG_HID_PICOLCD_CIR=y
CONFIG_HID_PLANTRONICS=m
# CONFIG_HID_PXRC is not set
# CONFIG_HID_RAZER is not set
CONFIG_HID_PRIMAX=m
# CONFIG_HID_RETRODE is not set
# CONFIG_HID_ROCCAT is not set
CONFIG_HID_SAITEK=m
CONFIG_HID_SAMSUNG=m
# CONFIG_HID_SEMITEK is not set
# CONFIG_HID_SIGMAMICRO is not set
# CONFIG_HID_SONY is not set
CONFIG_HID_SPEEDLINK=m
# CONFIG_HID_STEAM is not set
CONFIG_HID_STEELSERIES=m
CONFIG_HID_SUNPLUS=m
CONFIG_HID_RMI=m
CONFIG_HID_GREENASIA=m
# CONFIG_GREENASIA_FF is not set
CONFIG_HID_SMARTJOYPLUS=m
# CONFIG_SMARTJOYPLUS_FF is not set
CONFIG_HID_TIVO=m
CONFIG_HID_TOPSEED=m
# CONFIG_HID_TOPRE is not set
CONFIG_HID_THINGM=m
CONFIG_HID_THRUSTMASTER=m
# CONFIG_THRUSTMASTER_FF is not set
# CONFIG_HID_UDRAW_PS3 is not set
# CONFIG_HID_U2FZERO is not set
# CONFIG_HID_WACOM is not set
CONFIG_HID_WIIMOTE=m
CONFIG_HID_XINMO=m
CONFIG_HID_ZEROPLUS=m
# CONFIG_ZEROPLUS_FF is not set
CONFIG_HID_ZYDACRON=m
CONFIG_HID_SENSOR_HUB=y
CONFIG_HID_SENSOR_CUSTOM_SENSOR=m
CONFIG_HID_ALPS=m
# CONFIG_HID_MCP2221 is not set
# end of Special HID drivers

#
# USB HID support
#
CONFIG_USB_HID=y
# CONFIG_HID_PID is not set
# CONFIG_USB_HIDDEV is not set
# end of USB HID support

#
# I2C HID support
#
# CONFIG_I2C_HID_ACPI is not set
# end of I2C HID support

#
# Intel ISH HID support
#
CONFIG_INTEL_ISH_HID=m
# CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER is not set
# end of Intel ISH HID support

#
# AMD SFH HID Support
#
# CONFIG_AMD_SFH_HID is not set
# end of AMD SFH HID Support
# end of HID support

CONFIG_USB_OHCI_LITTLE_ENDIAN=y
CONFIG_USB_SUPPORT=y
CONFIG_USB_COMMON=y
# CONFIG_USB_LED_TRIG is not set
# CONFIG_USB_ULPI_BUS is not set
# CONFIG_USB_CONN_GPIO is not set
CONFIG_USB_ARCH_HAS_HCD=y
CONFIG_USB=y
CONFIG_USB_PCI=y
CONFIG_USB_ANNOUNCE_NEW_DEVICES=y

#
# Miscellaneous USB options
#
CONFIG_USB_DEFAULT_PERSIST=y
# CONFIG_USB_FEW_INIT_RETRIES is not set
# CONFIG_USB_DYNAMIC_MINORS is not set
# CONFIG_USB_OTG is not set
# CONFIG_USB_OTG_PRODUCTLIST is not set
# CONFIG_USB_OTG_DISABLE_EXTERNAL_HUB is not set
CONFIG_USB_LEDS_TRIGGER_USBPORT=y
CONFIG_USB_AUTOSUSPEND_DELAY=2
CONFIG_USB_MON=y

#
# USB Host Controller Drivers
#
# CONFIG_USB_C67X00_HCD is not set
CONFIG_USB_XHCI_HCD=y
# CONFIG_USB_XHCI_DBGCAP is not set
CONFIG_USB_XHCI_PCI=y
# CONFIG_USB_XHCI_PCI_RENESAS is not set
# CONFIG_USB_XHCI_PLATFORM is not set
CONFIG_USB_EHCI_HCD=y
CONFIG_USB_EHCI_ROOT_HUB_TT=y
CONFIG_USB_EHCI_TT_NEWSCHED=y
CONFIG_USB_EHCI_PCI=y
# CONFIG_USB_EHCI_FSL is not set
# CONFIG_USB_EHCI_HCD_PLATFORM is not set
# CONFIG_USB_OXU210HP_HCD is not set
# CONFIG_USB_ISP116X_HCD is not set
# CONFIG_USB_MAX3421_HCD is not set
CONFIG_USB_OHCI_HCD=y
CONFIG_USB_OHCI_HCD_PCI=y
# CONFIG_USB_OHCI_HCD_PLATFORM is not set
CONFIG_USB_UHCI_HCD=y
# CONFIG_USB_SL811_HCD is not set
# CONFIG_USB_R8A66597_HCD is not set
# CONFIG_USB_HCD_BCMA is not set
# CONFIG_USB_HCD_TEST_MODE is not set

#
# USB Device Class drivers
#
# CONFIG_USB_ACM is not set
# CONFIG_USB_PRINTER is not set
# CONFIG_USB_WDM is not set
# CONFIG_USB_TMC is not set

#
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
#

#
# also be needed; see USB_STORAGE Help for more info
#
CONFIG_USB_STORAGE=m
# CONFIG_USB_STORAGE_DEBUG is not set
# CONFIG_USB_STORAGE_REALTEK is not set
# CONFIG_USB_STORAGE_DATAFAB is not set
# CONFIG_USB_STORAGE_FREECOM is not set
# CONFIG_USB_STORAGE_ISD200 is not set
# CONFIG_USB_STORAGE_USBAT is not set
# CONFIG_USB_STORAGE_SDDR09 is not set
# CONFIG_USB_STORAGE_SDDR55 is not set
# CONFIG_USB_STORAGE_JUMPSHOT is not set
# CONFIG_USB_STORAGE_ALAUDA is not set
# CONFIG_USB_STORAGE_ONETOUCH is not set
# CONFIG_USB_STORAGE_KARMA is not set
# CONFIG_USB_STORAGE_CYPRESS_ATACB is not set
# CONFIG_USB_STORAGE_ENE_UB6250 is not set
# CONFIG_USB_UAS is not set

#
# USB Imaging devices
#
# CONFIG_USB_MDC800 is not set
# CONFIG_USB_MICROTEK is not set
# CONFIG_USBIP_CORE is not set

#
# USB dual-mode controller drivers
#
# CONFIG_USB_CDNS_SUPPORT is not set
# CONFIG_USB_MUSB_HDRC is not set
# CONFIG_USB_DWC3 is not set
# CONFIG_USB_DWC2 is not set
# CONFIG_USB_CHIPIDEA is not set
# CONFIG_USB_ISP1760 is not set

#
# USB port drivers
#
# CONFIG_USB_USS720 is not set
CONFIG_USB_SERIAL=m
CONFIG_USB_SERIAL_GENERIC=y
# CONFIG_USB_SERIAL_SIMPLE is not set
# CONFIG_USB_SERIAL_AIRCABLE is not set
# CONFIG_USB_SERIAL_ARK3116 is not set
# CONFIG_USB_SERIAL_BELKIN is not set
# CONFIG_USB_SERIAL_CH341 is not set
# CONFIG_USB_SERIAL_WHITEHEAT is not set
# CONFIG_USB_SERIAL_DIGI_ACCELEPORT is not set
# CONFIG_USB_SERIAL_CP210X is not set
# CONFIG_USB_SERIAL_CYPRESS_M8 is not set
# CONFIG_USB_SERIAL_EMPEG is not set
# CONFIG_USB_SERIAL_FTDI_SIO is not set
# CONFIG_USB_SERIAL_VISOR is not set
# CONFIG_USB_SERIAL_IPAQ is not set
# CONFIG_USB_SERIAL_IR is not set
# CONFIG_USB_SERIAL_EDGEPORT is not set
# CONFIG_USB_SERIAL_EDGEPORT_TI is not set
# CONFIG_USB_SERIAL_F81232 is not set
# CONFIG_USB_SERIAL_F8153X is not set
# CONFIG_USB_SERIAL_GARMIN is not set
# CONFIG_USB_SERIAL_IPW is not set
# CONFIG_USB_SERIAL_IUU is not set
# CONFIG_USB_SERIAL_KEYSPAN_PDA is not set
# CONFIG_USB_SERIAL_KEYSPAN is not set
# CONFIG_USB_SERIAL_KLSI is not set
# CONFIG_USB_SERIAL_KOBIL_SCT is not set
# CONFIG_USB_SERIAL_MCT_U232 is not set
# CONFIG_USB_SERIAL_METRO is not set
# CONFIG_USB_SERIAL_MOS7720 is not set
# CONFIG_USB_SERIAL_MOS7840 is not set
# CONFIG_USB_SERIAL_MXUPORT is not set
# CONFIG_USB_SERIAL_NAVMAN is not set
# CONFIG_USB_SERIAL_PL2303 is not set
# CONFIG_USB_SERIAL_OTI6858 is not set
# CONFIG_USB_SERIAL_QCAUX is not set
# CONFIG_USB_SERIAL_QUALCOMM is not set
# CONFIG_USB_SERIAL_SPCP8X5 is not set
# CONFIG_USB_SERIAL_SAFE is not set
# CONFIG_USB_SERIAL_SIERRAWIRELESS is not set
# CONFIG_USB_SERIAL_SYMBOL is not set
# CONFIG_USB_SERIAL_TI is not set
# CONFIG_USB_SERIAL_CYBERJACK is not set
# CONFIG_USB_SERIAL_OPTION is not set
# CONFIG_USB_SERIAL_OMNINET is not set
# CONFIG_USB_SERIAL_OPTICON is not set
# CONFIG_USB_SERIAL_XSENS_MT is not set
# CONFIG_USB_SERIAL_WISHBONE is not set
# CONFIG_USB_SERIAL_SSU100 is not set
# CONFIG_USB_SERIAL_QT2 is not set
# CONFIG_USB_SERIAL_UPD78F0730 is not set
# CONFIG_USB_SERIAL_XR is not set
CONFIG_USB_SERIAL_DEBUG=m

#
# USB Miscellaneous drivers
#
# CONFIG_USB_EMI62 is not set
# CONFIG_USB_EMI26 is not set
# CONFIG_USB_ADUTUX is not set
# CONFIG_USB_SEVSEG is not set
# CONFIG_USB_LEGOTOWER is not set
# CONFIG_USB_LCD is not set
# CONFIG_USB_CYPRESS_CY7C63 is not set
# CONFIG_USB_CYTHERM is not set
# CONFIG_USB_IDMOUSE is not set
# CONFIG_USB_FTDI_ELAN is not set
# CONFIG_USB_APPLEDISPLAY is not set
# CONFIG_APPLE_MFI_FASTCHARGE is not set
# CONFIG_USB_SISUSBVGA is not set
# CONFIG_USB_LD is not set
# CONFIG_USB_TRANCEVIBRATOR is not set
# CONFIG_USB_IOWARRIOR is not set
# CONFIG_USB_TEST is not set
# CONFIG_USB_EHSET_TEST_FIXTURE is not set
# CONFIG_USB_ISIGHTFW is not set
# CONFIG_USB_YUREX is not set
# CONFIG_USB_EZUSB_FX2 is not set
# CONFIG_USB_HUB_USB251XB is not set
# CONFIG_USB_HSIC_USB3503 is not set
# CONFIG_USB_HSIC_USB4604 is not set
# CONFIG_USB_LINK_LAYER_TEST is not set
# CONFIG_USB_CHAOSKEY is not set
# CONFIG_USB_ATM is not set

#
# USB Physical Layer drivers
#
# CONFIG_NOP_USB_XCEIV is not set
# CONFIG_USB_GPIO_VBUS is not set
# CONFIG_USB_ISP1301 is not set
# end of USB Physical Layer drivers

# CONFIG_USB_GADGET is not set
CONFIG_TYPEC=y
# CONFIG_TYPEC_TCPM is not set
CONFIG_TYPEC_UCSI=y
# CONFIG_UCSI_CCG is not set
CONFIG_UCSI_ACPI=y
# CONFIG_UCSI_STM32G0 is not set
# CONFIG_TYPEC_TPS6598X is not set
# CONFIG_TYPEC_RT1719 is not set
# CONFIG_TYPEC_STUSB160X is not set
# CONFIG_TYPEC_WUSB3801 is not set

#
# USB Type-C Multiplexer/DeMultiplexer Switch support
#
# CONFIG_TYPEC_MUX_FSA4480 is not set
# CONFIG_TYPEC_MUX_PI3USB30532 is not set
# end of USB Type-C Multiplexer/DeMultiplexer Switch support

#
# USB Type-C Alternate Mode drivers
#
# CONFIG_TYPEC_DP_ALTMODE is not set
# end of USB Type-C Alternate Mode drivers

# CONFIG_USB_ROLE_SWITCH is not set
CONFIG_MMC=m
CONFIG_MMC_BLOCK=m
CONFIG_MMC_BLOCK_MINORS=8
CONFIG_SDIO_UART=m
# CONFIG_MMC_TEST is not set

#
# MMC/SD/SDIO Host Controller Drivers
#
# CONFIG_MMC_DEBUG is not set
CONFIG_MMC_SDHCI=m
CONFIG_MMC_SDHCI_IO_ACCESSORS=y
CONFIG_MMC_SDHCI_PCI=m
CONFIG_MMC_RICOH_MMC=y
CONFIG_MMC_SDHCI_ACPI=m
CONFIG_MMC_SDHCI_PLTFM=m
# CONFIG_MMC_SDHCI_F_SDH30 is not set
# CONFIG_MMC_WBSD is not set
# CONFIG_MMC_TIFM_SD is not set
# CONFIG_MMC_SPI is not set
# CONFIG_MMC_CB710 is not set
# CONFIG_MMC_VIA_SDMMC is not set
# CONFIG_MMC_VUB300 is not set
# CONFIG_MMC_USHC is not set
# CONFIG_MMC_USDHI6ROL0 is not set
# CONFIG_MMC_REALTEK_PCI is not set
CONFIG_MMC_CQHCI=m
# CONFIG_MMC_HSQ is not set
# CONFIG_MMC_TOSHIBA_PCI is not set
# CONFIG_MMC_MTK is not set
# CONFIG_MMC_SDHCI_XENON is not set
# CONFIG_SCSI_UFSHCD is not set
# CONFIG_MEMSTICK is not set
CONFIG_NEW_LEDS=y
CONFIG_LEDS_CLASS=y
# CONFIG_LEDS_CLASS_FLASH is not set
# CONFIG_LEDS_CLASS_MULTICOLOR is not set
# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set

#
# LED drivers
#
# CONFIG_LEDS_APU is not set
CONFIG_LEDS_LM3530=m
# CONFIG_LEDS_LM3532 is not set
# CONFIG_LEDS_LM3642 is not set
# CONFIG_LEDS_PCA9532 is not set
# CONFIG_LEDS_GPIO is not set
CONFIG_LEDS_LP3944=m
# CONFIG_LEDS_LP3952 is not set
# CONFIG_LEDS_LP50XX is not set
# CONFIG_LEDS_PCA955X is not set
# CONFIG_LEDS_PCA963X is not set
# CONFIG_LEDS_DAC124S085 is not set
# CONFIG_LEDS_PWM is not set
# CONFIG_LEDS_BD2802 is not set
CONFIG_LEDS_INTEL_SS4200=m
CONFIG_LEDS_LT3593=m
# CONFIG_LEDS_TCA6507 is not set
# CONFIG_LEDS_TLC591XX is not set
# CONFIG_LEDS_LM355x is not set
# CONFIG_LEDS_IS31FL319X is not set

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
#
CONFIG_LEDS_BLINKM=m
CONFIG_LEDS_MLXCPLD=m
# CONFIG_LEDS_MLXREG is not set
# CONFIG_LEDS_USER is not set
# CONFIG_LEDS_NIC78BX is not set
# CONFIG_LEDS_TI_LMU_COMMON is not set

#
# Flash and Torch LED drivers
#

#
# RGB LED drivers
#

#
# LED Triggers
#
CONFIG_LEDS_TRIGGERS=y
CONFIG_LEDS_TRIGGER_TIMER=m
CONFIG_LEDS_TRIGGER_ONESHOT=m
# CONFIG_LEDS_TRIGGER_DISK is not set
CONFIG_LEDS_TRIGGER_HEARTBEAT=m
CONFIG_LEDS_TRIGGER_BACKLIGHT=m
# CONFIG_LEDS_TRIGGER_CPU is not set
# CONFIG_LEDS_TRIGGER_ACTIVITY is not set
CONFIG_LEDS_TRIGGER_GPIO=m
CONFIG_LEDS_TRIGGER_DEFAULT_ON=m

#
# iptables trigger is under Netfilter config (LED target)
#
CONFIG_LEDS_TRIGGER_TRANSIENT=m
CONFIG_LEDS_TRIGGER_CAMERA=m
# CONFIG_LEDS_TRIGGER_PANIC is not set
# CONFIG_LEDS_TRIGGER_NETDEV is not set
# CONFIG_LEDS_TRIGGER_PATTERN is not set
CONFIG_LEDS_TRIGGER_AUDIO=m
# CONFIG_LEDS_TRIGGER_TTY is not set

#
# Simple LED drivers
#
# CONFIG_ACCESSIBILITY is not set
CONFIG_INFINIBAND=m
CONFIG_INFINIBAND_USER_MAD=m
CONFIG_INFINIBAND_USER_ACCESS=m
CONFIG_INFINIBAND_USER_MEM=y
CONFIG_INFINIBAND_ON_DEMAND_PAGING=y
CONFIG_INFINIBAND_ADDR_TRANS=y
CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS=y
CONFIG_INFINIBAND_VIRT_DMA=y
# CONFIG_INFINIBAND_EFA is not set
# CONFIG_INFINIBAND_ERDMA is not set
# CONFIG_MLX4_INFINIBAND is not set
# CONFIG_INFINIBAND_MTHCA is not set
# CONFIG_INFINIBAND_OCRDMA is not set
# CONFIG_INFINIBAND_USNIC is not set
# CONFIG_INFINIBAND_RDMAVT is not set
CONFIG_RDMA_RXE=m
CONFIG_RDMA_SIW=m
CONFIG_INFINIBAND_IPOIB=m
# CONFIG_INFINIBAND_IPOIB_CM is not set
CONFIG_INFINIBAND_IPOIB_DEBUG=y
# CONFIG_INFINIBAND_IPOIB_DEBUG_DATA is not set
CONFIG_INFINIBAND_SRP=m
CONFIG_INFINIBAND_SRPT=m
# CONFIG_INFINIBAND_ISER is not set
# CONFIG_INFINIBAND_ISERT is not set
# CONFIG_INFINIBAND_RTRS_CLIENT is not set
# CONFIG_INFINIBAND_RTRS_SERVER is not set
# CONFIG_INFINIBAND_OPA_VNIC is not set
CONFIG_EDAC_ATOMIC_SCRUB=y
CONFIG_EDAC_SUPPORT=y
CONFIG_EDAC=y
CONFIG_EDAC_LEGACY_SYSFS=y
# CONFIG_EDAC_DEBUG is not set
CONFIG_EDAC_GHES=y
CONFIG_EDAC_E752X=m
CONFIG_EDAC_I82975X=m
CONFIG_EDAC_I3000=m
CONFIG_EDAC_I3200=m
CONFIG_EDAC_IE31200=m
CONFIG_EDAC_X38=m
CONFIG_EDAC_I5400=m
CONFIG_EDAC_I7CORE=m
CONFIG_EDAC_I5100=m
CONFIG_EDAC_I7300=m
CONFIG_EDAC_SBRIDGE=m
CONFIG_EDAC_SKX=m
# CONFIG_EDAC_I10NM is not set
CONFIG_EDAC_PND2=m
# CONFIG_EDAC_IGEN6 is not set
CONFIG_RTC_LIB=y
CONFIG_RTC_MC146818_LIB=y
CONFIG_RTC_CLASS=y
CONFIG_RTC_HCTOSYS=y
CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
# CONFIG_RTC_SYSTOHC is not set
# CONFIG_RTC_DEBUG is not set
CONFIG_RTC_NVMEM=y

#
# RTC interfaces
#
CONFIG_RTC_INTF_SYSFS=y
CONFIG_RTC_INTF_PROC=y
CONFIG_RTC_INTF_DEV=y
# CONFIG_RTC_INTF_DEV_UIE_EMUL is not set
# CONFIG_RTC_DRV_TEST is not set

#
# I2C RTC drivers
#
# CONFIG_RTC_DRV_ABB5ZES3 is not set
# CONFIG_RTC_DRV_ABEOZ9 is not set
# CONFIG_RTC_DRV_ABX80X is not set
CONFIG_RTC_DRV_DS1307=m
# CONFIG_RTC_DRV_DS1307_CENTURY is not set
CONFIG_RTC_DRV_DS1374=m
# CONFIG_RTC_DRV_DS1374_WDT is not set
CONFIG_RTC_DRV_DS1672=m
CONFIG_RTC_DRV_MAX6900=m
CONFIG_RTC_DRV_RS5C372=m
CONFIG_RTC_DRV_ISL1208=m
CONFIG_RTC_DRV_ISL12022=m
CONFIG_RTC_DRV_X1205=m
CONFIG_RTC_DRV_PCF8523=m
# CONFIG_RTC_DRV_PCF85063 is not set
# CONFIG_RTC_DRV_PCF85363 is not set
CONFIG_RTC_DRV_PCF8563=m
CONFIG_RTC_DRV_PCF8583=m
CONFIG_RTC_DRV_M41T80=m
CONFIG_RTC_DRV_M41T80_WDT=y
CONFIG_RTC_DRV_BQ32K=m
# CONFIG_RTC_DRV_S35390A is not set
CONFIG_RTC_DRV_FM3130=m
# CONFIG_RTC_DRV_RX8010 is not set
CONFIG_RTC_DRV_RX8581=m
CONFIG_RTC_DRV_RX8025=m
CONFIG_RTC_DRV_EM3027=m
# CONFIG_RTC_DRV_RV3028 is not set
# CONFIG_RTC_DRV_RV3032 is not set
# CONFIG_RTC_DRV_RV8803 is not set
# CONFIG_RTC_DRV_SD3078 is not set

#
# SPI RTC drivers
#
# CONFIG_RTC_DRV_M41T93 is not set
# CONFIG_RTC_DRV_M41T94 is not set
# CONFIG_RTC_DRV_DS1302 is not set
# CONFIG_RTC_DRV_DS1305 is not set
# CONFIG_RTC_DRV_DS1343 is not set
# CONFIG_RTC_DRV_DS1347 is not set
# CONFIG_RTC_DRV_DS1390 is not set
# CONFIG_RTC_DRV_MAX6916 is not set
# CONFIG_RTC_DRV_R9701 is not set
CONFIG_RTC_DRV_RX4581=m
# CONFIG_RTC_DRV_RS5C348 is not set
# CONFIG_RTC_DRV_MAX6902 is not set
# CONFIG_RTC_DRV_PCF2123 is not set
# CONFIG_RTC_DRV_MCP795 is not set
CONFIG_RTC_I2C_AND_SPI=y

#
# SPI and I2C RTC drivers
#
CONFIG_RTC_DRV_DS3232=m
CONFIG_RTC_DRV_DS3232_HWMON=y
# CONFIG_RTC_DRV_PCF2127 is not set
CONFIG_RTC_DRV_RV3029C2=m
# CONFIG_RTC_DRV_RV3029_HWMON is not set
# CONFIG_RTC_DRV_RX6110 is not set

#
# Platform RTC drivers
#
CONFIG_RTC_DRV_CMOS=y
CONFIG_RTC_DRV_DS1286=m
CONFIG_RTC_DRV_DS1511=m
CONFIG_RTC_DRV_DS1553=m
# CONFIG_RTC_DRV_DS1685_FAMILY is not set
CONFIG_RTC_DRV_DS1742=m
CONFIG_RTC_DRV_DS2404=m
CONFIG_RTC_DRV_STK17TA8=m
# CONFIG_RTC_DRV_M48T86 is not set
CONFIG_RTC_DRV_M48T35=m
CONFIG_RTC_DRV_M48T59=m
CONFIG_RTC_DRV_MSM6242=m
CONFIG_RTC_DRV_BQ4802=m
CONFIG_RTC_DRV_RP5C01=m
CONFIG_RTC_DRV_V3020=m

#
# on-CPU RTC drivers
#
# CONFIG_RTC_DRV_FTRTC010 is not set

#
# HID Sensor RTC drivers
#
# CONFIG_RTC_DRV_GOLDFISH is not set
CONFIG_DMADEVICES=y
# CONFIG_DMADEVICES_DEBUG is not set

#
# DMA Devices
#
CONFIG_DMA_ENGINE=y
CONFIG_DMA_VIRTUAL_CHANNELS=y
CONFIG_DMA_ACPI=y
# CONFIG_ALTERA_MSGDMA is not set
CONFIG_INTEL_IDMA64=m
CONFIG_INTEL_IDXD_BUS=m
CONFIG_INTEL_IDXD=m
# CONFIG_INTEL_IDXD_COMPAT is not set
# CONFIG_INTEL_IDXD_SVM is not set
# CONFIG_INTEL_IDXD_PERFMON is not set
CONFIG_INTEL_IOATDMA=m
# CONFIG_PLX_DMA is not set
# CONFIG_AMD_PTDMA is not set
# CONFIG_QCOM_HIDMA_MGMT is not set
# CONFIG_QCOM_HIDMA is not set
CONFIG_DW_DMAC_CORE=y
CONFIG_DW_DMAC=m
CONFIG_DW_DMAC_PCI=y
# CONFIG_DW_EDMA is not set
# CONFIG_DW_EDMA_PCIE is not set
CONFIG_HSU_DMA=y
# CONFIG_SF_PDMA is not set
# CONFIG_INTEL_LDMA is not set

#
# DMA Clients
#
CONFIG_ASYNC_TX_DMA=y
CONFIG_DMATEST=m
CONFIG_DMA_ENGINE_RAID=y

#
# DMABUF options
#
CONFIG_SYNC_FILE=y
# CONFIG_SW_SYNC is not set
# CONFIG_UDMABUF is not set
# CONFIG_DMABUF_MOVE_NOTIFY is not set
# CONFIG_DMABUF_DEBUG is not set
# CONFIG_DMABUF_SELFTESTS is not set
# CONFIG_DMABUF_HEAPS is not set
# CONFIG_DMABUF_SYSFS_STATS is not set
# end of DMABUF options

CONFIG_DCA=m
# CONFIG_AUXDISPLAY is not set
# CONFIG_PANEL is not set
CONFIG_UIO=m
CONFIG_UIO_CIF=m
CONFIG_UIO_PDRV_GENIRQ=m
# CONFIG_UIO_DMEM_GENIRQ is not set
CONFIG_UIO_AEC=m
CONFIG_UIO_SERCOS3=m
CONFIG_UIO_PCI_GENERIC=m
# CONFIG_UIO_NETX is not set
# CONFIG_UIO_PRUSS is not set
# CONFIG_UIO_MF624 is not set
CONFIG_VFIO=m
CONFIG_VFIO_CONTAINER=y
CONFIG_VFIO_IOMMU_TYPE1=m
CONFIG_VFIO_NOIOMMU=y
CONFIG_VFIO_VIRQFD=y
CONFIG_VFIO_PCI_CORE=m
CONFIG_VFIO_PCI_MMAP=y
CONFIG_VFIO_PCI_INTX=y
CONFIG_VFIO_PCI=m
# CONFIG_VFIO_PCI_VGA is not set
# CONFIG_VFIO_PCI_IGD is not set
CONFIG_VFIO_MDEV=m
CONFIG_IRQ_BYPASS_MANAGER=m
# CONFIG_VIRT_DRIVERS is not set
CONFIG_VIRTIO_ANCHOR=y
CONFIG_VIRTIO=y
CONFIG_VIRTIO_PCI_LIB=y
CONFIG_VIRTIO_PCI_LIB_LEGACY=y
CONFIG_VIRTIO_MENU=y
CONFIG_VIRTIO_PCI=y
CONFIG_VIRTIO_PCI_LEGACY=y
# CONFIG_VIRTIO_PMEM is not set
CONFIG_VIRTIO_BALLOON=m
# CONFIG_VIRTIO_MEM is not set
CONFIG_VIRTIO_INPUT=m
# CONFIG_VIRTIO_MMIO is not set
CONFIG_VIRTIO_DMA_SHARED_BUFFER=m
# CONFIG_VDPA is not set
CONFIG_VHOST_IOTLB=m
CONFIG_VHOST=m
CONFIG_VHOST_MENU=y
CONFIG_VHOST_NET=m
# CONFIG_VHOST_SCSI is not set
CONFIG_VHOST_VSOCK=m
# CONFIG_VHOST_CROSS_ENDIAN_LEGACY is not set

#
# Microsoft Hyper-V guest support
#
# CONFIG_HYPERV is not set
# end of Microsoft Hyper-V guest support

# CONFIG_GREYBUS is not set
# CONFIG_COMEDI is not set
# CONFIG_STAGING is not set
# CONFIG_CHROME_PLATFORMS is not set
CONFIG_MELLANOX_PLATFORM=y
CONFIG_MLXREG_HOTPLUG=m
# CONFIG_MLXREG_IO is not set
# CONFIG_MLXREG_LC is not set
# CONFIG_NVSW_SN2201 is not set
CONFIG_SURFACE_PLATFORMS=y
# CONFIG_SURFACE3_WMI is not set
# CONFIG_SURFACE_3_POWER_OPREGION is not set
# CONFIG_SURFACE_GPE is not set
# CONFIG_SURFACE_HOTPLUG is not set
# CONFIG_SURFACE_PRO3_BUTTON is not set
CONFIG_X86_PLATFORM_DEVICES=y
CONFIG_ACPI_WMI=m
CONFIG_WMI_BMOF=m
# CONFIG_HUAWEI_WMI is not set
# CONFIG_UV_SYSFS is not set
CONFIG_MXM_WMI=m
# CONFIG_PEAQ_WMI is not set
# CONFIG_NVIDIA_WMI_EC_BACKLIGHT is not set
# CONFIG_XIAOMI_WMI is not set
# CONFIG_GIGABYTE_WMI is not set
# CONFIG_YOGABOOK_WMI is not set
CONFIG_ACERHDF=m
# CONFIG_ACER_WIRELESS is not set
CONFIG_ACER_WMI=m
# CONFIG_AMD_PMF is not set
# CONFIG_AMD_PMC is not set
# CONFIG_ADV_SWBUTTON is not set
CONFIG_APPLE_GMUX=m
CONFIG_ASUS_LAPTOP=m
# CONFIG_ASUS_WIRELESS is not set
CONFIG_ASUS_WMI=m
CONFIG_ASUS_NB_WMI=m
# CONFIG_ASUS_TF103C_DOCK is not set
# CONFIG_MERAKI_MX100 is not set
CONFIG_EEEPC_LAPTOP=m
CONFIG_EEEPC_WMI=m
# CONFIG_X86_PLATFORM_DRIVERS_DELL is not set
CONFIG_AMILO_RFKILL=m
CONFIG_FUJITSU_LAPTOP=m
CONFIG_FUJITSU_TABLET=m
# CONFIG_GPD_POCKET_FAN is not set
# CONFIG_X86_PLATFORM_DRIVERS_HP is not set
# CONFIG_WIRELESS_HOTKEY is not set
# CONFIG_IBM_RTL is not set
CONFIG_IDEAPAD_LAPTOP=m
CONFIG_SENSORS_HDAPS=m
CONFIG_THINKPAD_ACPI=m
# CONFIG_THINKPAD_ACPI_DEBUGFACILITIES is not set
# CONFIG_THINKPAD_ACPI_DEBUG is not set
# CONFIG_THINKPAD_ACPI_UNSAFE_LEDS is not set
CONFIG_THINKPAD_ACPI_VIDEO=y
CONFIG_THINKPAD_ACPI_HOTKEY_POLL=y
# CONFIG_THINKPAD_LMI is not set
# CONFIG_INTEL_ATOMISP2_PM is not set
# CONFIG_INTEL_IFS is not set
# CONFIG_INTEL_SAR_INT1092 is not set
CONFIG_INTEL_PMC_CORE=m

#
# Intel Speed Select Technology interface support
#
# CONFIG_INTEL_SPEED_SELECT_INTERFACE is not set
# end of Intel Speed Select Technology interface support

CONFIG_INTEL_WMI=y
# CONFIG_INTEL_WMI_SBL_FW_UPDATE is not set
CONFIG_INTEL_WMI_THUNDERBOLT=m

#
# Intel Uncore Frequency Control
#
# CONFIG_INTEL_UNCORE_FREQ_CONTROL is not set
# end of Intel Uncore Frequency Control

CONFIG_INTEL_HID_EVENT=m
CONFIG_INTEL_VBTN=m
# CONFIG_INTEL_INT0002_VGPIO is not set
CONFIG_INTEL_OAKTRAIL=m
# CONFIG_INTEL_ISHTP_ECLITE is not set
# CONFIG_INTEL_PUNIT_IPC is not set
CONFIG_INTEL_RST=m
# CONFIG_INTEL_SMARTCONNECT is not set
CONFIG_INTEL_TURBO_MAX_3=y
# CONFIG_INTEL_VSEC is not set
CONFIG_MSI_LAPTOP=m
CONFIG_MSI_WMI=m
# CONFIG_PCENGINES_APU2 is not set
# CONFIG_BARCO_P50_GPIO is not set
CONFIG_SAMSUNG_LAPTOP=m
CONFIG_SAMSUNG_Q10=m
CONFIG_TOSHIBA_BT_RFKILL=m
# CONFIG_TOSHIBA_HAPS is not set
# CONFIG_TOSHIBA_WMI is not set
CONFIG_ACPI_CMPC=m
CONFIG_COMPAL_LAPTOP=m
# CONFIG_LG_LAPTOP is not set
CONFIG_PANASONIC_LAPTOP=m
CONFIG_SONY_LAPTOP=m
CONFIG_SONYPI_COMPAT=y
# CONFIG_SYSTEM76_ACPI is not set
CONFIG_TOPSTAR_LAPTOP=m
# CONFIG_SERIAL_MULTI_INSTANTIATE is not set
CONFIG_MLX_PLATFORM=m
CONFIG_INTEL_IPS=m
# CONFIG_INTEL_SCU_PCI is not set
# CONFIG_INTEL_SCU_PLATFORM is not set
# CONFIG_SIEMENS_SIMATIC_IPC is not set
# CONFIG_WINMATE_FM07_KEYS is not set
CONFIG_P2SB=y
CONFIG_HAVE_CLK=y
CONFIG_HAVE_CLK_PREPARE=y
CONFIG_COMMON_CLK=y
# CONFIG_LMK04832 is not set
# CONFIG_COMMON_CLK_MAX9485 is not set
# CONFIG_COMMON_CLK_SI5341 is not set
# CONFIG_COMMON_CLK_SI5351 is not set
# CONFIG_COMMON_CLK_SI544 is not set
# CONFIG_COMMON_CLK_CDCE706 is not set
# CONFIG_COMMON_CLK_CS2000_CP is not set
# CONFIG_COMMON_CLK_PWM is not set
# CONFIG_XILINX_VCU is not set
CONFIG_HWSPINLOCK=y

#
# Clock Source drivers
#
CONFIG_CLKEVT_I8253=y
CONFIG_I8253_LOCK=y
CONFIG_CLKBLD_I8253=y
# end of Clock Source drivers

CONFIG_MAILBOX=y
CONFIG_PCC=y
# CONFIG_ALTERA_MBOX is not set
CONFIG_IOMMU_IOVA=y
CONFIG_IOASID=y
CONFIG_IOMMU_API=y
CONFIG_IOMMU_SUPPORT=y

#
# Generic IOMMU Pagetable Support
#
# end of Generic IOMMU Pagetable Support

# CONFIG_IOMMU_DEBUGFS is not set
# CONFIG_IOMMU_DEFAULT_DMA_STRICT is not set
CONFIG_IOMMU_DEFAULT_DMA_LAZY=y
# CONFIG_IOMMU_DEFAULT_PASSTHROUGH is not set
CONFIG_IOMMU_DMA=y
CONFIG_IOMMU_SVA=y
# CONFIG_AMD_IOMMU is not set
CONFIG_DMAR_TABLE=y
CONFIG_INTEL_IOMMU=y
CONFIG_INTEL_IOMMU_SVM=y
# CONFIG_INTEL_IOMMU_DEFAULT_ON is not set
CONFIG_INTEL_IOMMU_FLOPPY_WA=y
CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON=y
# CONFIG_IOMMUFD is not set
CONFIG_IRQ_REMAP=y
# CONFIG_VIRTIO_IOMMU is not set

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

#
# Rpmsg drivers
#
# CONFIG_RPMSG_QCOM_GLINK_RPM is not set
# CONFIG_RPMSG_VIRTIO is not set
# end of Rpmsg drivers

# CONFIG_SOUNDWIRE is not set

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
# end of Amlogic SoC drivers

#
# Broadcom SoC drivers
#
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
# end of NXP/Freescale QorIQ SoC drivers

#
# fujitsu SoC drivers
#
# end of fujitsu SoC drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# Enable LiteX SoC Builder specific drivers
#
# end of Enable LiteX SoC Builder specific drivers

#
# Qualcomm SoC drivers
#
# end of Qualcomm SoC drivers

# CONFIG_SOC_TI is not set

#
# Xilinx SoC drivers
#
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

# CONFIG_PM_DEVFREQ is not set
# CONFIG_EXTCON is not set
# CONFIG_MEMORY is not set
# CONFIG_IIO is not set
CONFIG_NTB=m
# CONFIG_NTB_MSI is not set
# CONFIG_NTB_AMD is not set
# CONFIG_NTB_IDT is not set
# CONFIG_NTB_INTEL is not set
# CONFIG_NTB_EPF is not set
# CONFIG_NTB_SWITCHTEC is not set
# CONFIG_NTB_PINGPONG is not set
# CONFIG_NTB_TOOL is not set
# CONFIG_NTB_PERF is not set
# CONFIG_NTB_TRANSPORT is not set
CONFIG_PWM=y
CONFIG_PWM_SYSFS=y
# CONFIG_PWM_DEBUG is not set
# CONFIG_PWM_CLK is not set
# CONFIG_PWM_DWC is not set
CONFIG_PWM_LPSS=m
CONFIG_PWM_LPSS_PCI=m
CONFIG_PWM_LPSS_PLATFORM=m
# CONFIG_PWM_PCA9685 is not set

#
# IRQ chip support
#
# end of IRQ chip support

# CONFIG_IPACK_BUS is not set
# CONFIG_RESET_CONTROLLER is not set

#
# PHY Subsystem
#
# CONFIG_GENERIC_PHY is not set
# CONFIG_USB_LGM_PHY is not set
# CONFIG_PHY_CAN_TRANSCEIVER is not set

#
# PHY drivers for Broadcom platforms
#
# CONFIG_BCM_KONA_USB2_PHY is not set
# end of PHY drivers for Broadcom platforms

# CONFIG_PHY_PXA_28NM_HSIC is not set
# CONFIG_PHY_PXA_28NM_USB2 is not set
# CONFIG_PHY_INTEL_LGM_EMMC is not set
# end of PHY Subsystem

CONFIG_POWERCAP=y
CONFIG_INTEL_RAPL_CORE=m
CONFIG_INTEL_RAPL=m
# CONFIG_IDLE_INJECT is not set
# CONFIG_MCB is not set

#
# Performance monitor support
#
# end of Performance monitor support

CONFIG_RAS=y
# CONFIG_RAS_CEC is not set
# CONFIG_USB4 is not set

#
# Android
#
# CONFIG_ANDROID_BINDER_IPC is not set
# end of Android

CONFIG_LIBNVDIMM=m
CONFIG_BLK_DEV_PMEM=m
CONFIG_ND_CLAIM=y
CONFIG_ND_BTT=m
CONFIG_BTT=y
CONFIG_ND_PFN=m
CONFIG_NVDIMM_PFN=y
CONFIG_NVDIMM_DAX=y
CONFIG_NVDIMM_KEYS=y
# CONFIG_NVDIMM_SECURITY_TEST is not set
CONFIG_DAX=y
CONFIG_DEV_DAX=m
CONFIG_DEV_DAX_PMEM=m
CONFIG_DEV_DAX_KMEM=m
CONFIG_NVMEM=y
CONFIG_NVMEM_SYSFS=y
# CONFIG_NVMEM_RMEM is not set

#
# HW tracing support
#
CONFIG_STM=m
# CONFIG_STM_PROTO_BASIC is not set
# CONFIG_STM_PROTO_SYS_T is not set
CONFIG_STM_DUMMY=m
CONFIG_STM_SOURCE_CONSOLE=m
CONFIG_STM_SOURCE_HEARTBEAT=m
CONFIG_STM_SOURCE_FTRACE=m
CONFIG_INTEL_TH=m
CONFIG_INTEL_TH_PCI=m
CONFIG_INTEL_TH_ACPI=m
CONFIG_INTEL_TH_GTH=m
CONFIG_INTEL_TH_STH=m
CONFIG_INTEL_TH_MSU=m
CONFIG_INTEL_TH_PTI=m
# CONFIG_INTEL_TH_DEBUG is not set
# end of HW tracing support

# CONFIG_FPGA is not set
# CONFIG_SIOX is not set
# CONFIG_SLIMBUS is not set
# CONFIG_INTERCONNECT is not set
# CONFIG_COUNTER is not set
# CONFIG_MOST is not set
# CONFIG_PECI is not set
# CONFIG_HTE is not set
# end of Device Drivers

#
# File systems
#
CONFIG_DCACHE_WORD_ACCESS=y
# CONFIG_VALIDATE_FS_PARSER is not set
CONFIG_FS_IOMAP=y
CONFIG_EXT2_FS=m
CONFIG_EXT2_FS_XATTR=y
CONFIG_EXT2_FS_POSIX_ACL=y
CONFIG_EXT2_FS_SECURITY=y
# CONFIG_EXT3_FS is not set
CONFIG_EXT4_FS=y
CONFIG_EXT4_FS_POSIX_ACL=y
CONFIG_EXT4_FS_SECURITY=y
# CONFIG_EXT4_DEBUG is not set
CONFIG_JBD2=y
# CONFIG_JBD2_DEBUG is not set
CONFIG_FS_MBCACHE=y
# CONFIG_REISERFS_FS is not set
# CONFIG_JFS_FS is not set
CONFIG_XFS_FS=m
CONFIG_XFS_SUPPORT_V4=y
CONFIG_XFS_QUOTA=y
CONFIG_XFS_POSIX_ACL=y
CONFIG_XFS_RT=y
CONFIG_XFS_ONLINE_SCRUB=y
CONFIG_XFS_ONLINE_REPAIR=y
CONFIG_XFS_DEBUG=y
CONFIG_XFS_ASSERT_FATAL=y
CONFIG_GFS2_FS=m
CONFIG_GFS2_FS_LOCKING_DLM=y
CONFIG_OCFS2_FS=m
CONFIG_OCFS2_FS_O2CB=m
CONFIG_OCFS2_FS_USERSPACE_CLUSTER=m
CONFIG_OCFS2_FS_STATS=y
CONFIG_OCFS2_DEBUG_MASKLOG=y
# CONFIG_OCFS2_DEBUG_FS is not set
CONFIG_BTRFS_FS=m
CONFIG_BTRFS_FS_POSIX_ACL=y
# CONFIG_BTRFS_FS_CHECK_INTEGRITY is not set
# CONFIG_BTRFS_FS_RUN_SANITY_TESTS is not set
# CONFIG_BTRFS_DEBUG is not set
# CONFIG_BTRFS_ASSERT is not set
# CONFIG_BTRFS_FS_REF_VERIFY is not set
# CONFIG_NILFS2_FS is not set
CONFIG_F2FS_FS=m
CONFIG_F2FS_STAT_FS=y
CONFIG_F2FS_FS_XATTR=y
CONFIG_F2FS_FS_POSIX_ACL=y
CONFIG_F2FS_FS_SECURITY=y
# CONFIG_F2FS_CHECK_FS is not set
# CONFIG_F2FS_FAULT_INJECTION is not set
# CONFIG_F2FS_FS_COMPRESSION is not set
CONFIG_F2FS_IOSTAT=y
# CONFIG_F2FS_UNFAIR_RWSEM is not set
# CONFIG_ZONEFS_FS is not set
CONFIG_FS_DAX=y
CONFIG_FS_DAX_PMD=y
CONFIG_FS_POSIX_ACL=y
CONFIG_EXPORTFS=y
CONFIG_EXPORTFS_BLOCK_OPS=y
CONFIG_FILE_LOCKING=y
CONFIG_FS_ENCRYPTION=y
CONFIG_FS_ENCRYPTION_ALGS=y
# CONFIG_FS_VERITY is not set
CONFIG_FSNOTIFY=y
CONFIG_DNOTIFY=y
CONFIG_INOTIFY_USER=y
CONFIG_FANOTIFY=y
CONFIG_FANOTIFY_ACCESS_PERMISSIONS=y
CONFIG_QUOTA=y
CONFIG_QUOTA_NETLINK_INTERFACE=y
CONFIG_PRINT_QUOTA_WARNING=y
# CONFIG_QUOTA_DEBUG is not set
CONFIG_QUOTA_TREE=y
# CONFIG_QFMT_V1 is not set
CONFIG_QFMT_V2=y
CONFIG_QUOTACTL=y
CONFIG_AUTOFS4_FS=y
CONFIG_AUTOFS_FS=y
CONFIG_FUSE_FS=m
CONFIG_CUSE=m
# CONFIG_VIRTIO_FS is not set
CONFIG_OVERLAY_FS=m
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
# CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW is not set
# CONFIG_OVERLAY_FS_INDEX is not set
# CONFIG_OVERLAY_FS_XINO_AUTO is not set
# CONFIG_OVERLAY_FS_METACOPY is not set

#
# Caches
#
CONFIG_NETFS_SUPPORT=y
CONFIG_NETFS_STATS=y
CONFIG_FSCACHE=m
CONFIG_FSCACHE_STATS=y
# CONFIG_FSCACHE_DEBUG is not set
CONFIG_CACHEFILES=m
# CONFIG_CACHEFILES_DEBUG is not set
# CONFIG_CACHEFILES_ERROR_INJECTION is not set
# CONFIG_CACHEFILES_ONDEMAND is not set
# end of Caches

#
# CD-ROM/DVD Filesystems
#
CONFIG_ISO9660_FS=m
CONFIG_JOLIET=y
CONFIG_ZISOFS=y
CONFIG_UDF_FS=m
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/EXFAT/NT Filesystems
#
CONFIG_FAT_FS=m
CONFIG_MSDOS_FS=m
CONFIG_VFAT_FS=m
CONFIG_FAT_DEFAULT_CODEPAGE=437
CONFIG_FAT_DEFAULT_IOCHARSET="ascii"
# CONFIG_FAT_DEFAULT_UTF8 is not set
# CONFIG_EXFAT_FS is not set
# CONFIG_NTFS_FS is not set
# CONFIG_NTFS3_FS is not set
# end of DOS/FAT/EXFAT/NT Filesystems

#
# Pseudo filesystems
#
CONFIG_PROC_FS=y
CONFIG_PROC_KCORE=y
CONFIG_PROC_VMCORE=y
CONFIG_PROC_VMCORE_DEVICE_DUMP=y
CONFIG_PROC_SYSCTL=y
CONFIG_PROC_PAGE_MONITOR=y
CONFIG_PROC_CHILDREN=y
CONFIG_PROC_PID_ARCH_STATUS=y
CONFIG_KERNFS=y
CONFIG_SYSFS=y
CONFIG_TMPFS=y
CONFIG_TMPFS_POSIX_ACL=y
CONFIG_TMPFS_XATTR=y
# CONFIG_TMPFS_INODE64 is not set
CONFIG_HUGETLBFS=y
CONFIG_HUGETLB_PAGE=y
CONFIG_ARCH_WANT_HUGETLB_PAGE_OPTIMIZE_VMEMMAP=y
CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP=y
# CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP_DEFAULT_ON is not set
CONFIG_MEMFD_CREATE=y
CONFIG_ARCH_HAS_GIGANTIC_PAGE=y
CONFIG_CONFIGFS_FS=y
CONFIG_EFIVAR_FS=y
# end of Pseudo filesystems

CONFIG_MISC_FILESYSTEMS=y
# CONFIG_ORANGEFS_FS is not set
# CONFIG_ADFS_FS is not set
# CONFIG_AFFS_FS is not set
# CONFIG_ECRYPT_FS is not set
# CONFIG_HFS_FS is not set
# CONFIG_HFSPLUS_FS is not set
# CONFIG_BEFS_FS is not set
# CONFIG_BFS_FS is not set
# CONFIG_EFS_FS is not set
CONFIG_CRAMFS=m
CONFIG_CRAMFS_BLOCKDEV=y
CONFIG_SQUASHFS=m
# CONFIG_SQUASHFS_FILE_CACHE is not set
CONFIG_SQUASHFS_FILE_DIRECT=y
CONFIG_SQUASHFS_DECOMP_SINGLE=y
# CONFIG_SQUASHFS_CHOICE_DECOMP_BY_MOUNT is not set
CONFIG_SQUASHFS_COMPILE_DECOMP_SINGLE=y
# CONFIG_SQUASHFS_COMPILE_DECOMP_MULTI is not set
# CONFIG_SQUASHFS_COMPILE_DECOMP_MULTI_PERCPU is not set
CONFIG_SQUASHFS_XATTR=y
CONFIG_SQUASHFS_ZLIB=y
# CONFIG_SQUASHFS_LZ4 is not set
CONFIG_SQUASHFS_LZO=y
CONFIG_SQUASHFS_XZ=y
# CONFIG_SQUASHFS_ZSTD is not set
# CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set
# CONFIG_SQUASHFS_EMBEDDED is not set
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3
# CONFIG_VXFS_FS is not set
CONFIG_MINIX_FS=m
# CONFIG_OMFS_FS is not set
# CONFIG_HPFS_FS is not set
# CONFIG_QNX4FS_FS is not set
# CONFIG_QNX6FS_FS is not set
# CONFIG_ROMFS_FS is not set
CONFIG_PSTORE=y
CONFIG_PSTORE_DEFAULT_KMSG_BYTES=10240
CONFIG_PSTORE_DEFLATE_COMPRESS=y
# CONFIG_PSTORE_LZO_COMPRESS is not set
# CONFIG_PSTORE_LZ4_COMPRESS is not set
# CONFIG_PSTORE_LZ4HC_COMPRESS is not set
# CONFIG_PSTORE_842_COMPRESS is not set
# CONFIG_PSTORE_ZSTD_COMPRESS is not set
CONFIG_PSTORE_COMPRESS=y
CONFIG_PSTORE_DEFLATE_COMPRESS_DEFAULT=y
CONFIG_PSTORE_COMPRESS_DEFAULT="deflate"
# CONFIG_PSTORE_CONSOLE is not set
# CONFIG_PSTORE_PMSG is not set
# CONFIG_PSTORE_FTRACE is not set
CONFIG_PSTORE_RAM=m
# CONFIG_PSTORE_BLK is not set
# CONFIG_SYSV_FS is not set
# CONFIG_UFS_FS is not set
# CONFIG_EROFS_FS is not set
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
# CONFIG_NFS_V2 is not set
CONFIG_NFS_V3=y
CONFIG_NFS_V3_ACL=y
CONFIG_NFS_V4=m
# CONFIG_NFS_SWAP is not set
CONFIG_NFS_V4_1=y
CONFIG_NFS_V4_2=y
CONFIG_PNFS_FILE_LAYOUT=m
CONFIG_PNFS_BLOCK=m
CONFIG_PNFS_FLEXFILE_LAYOUT=m
CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN="kernel.org"
# CONFIG_NFS_V4_1_MIGRATION is not set
CONFIG_NFS_V4_SECURITY_LABEL=y
CONFIG_ROOT_NFS=y
# CONFIG_NFS_USE_LEGACY_DNS is not set
CONFIG_NFS_USE_KERNEL_DNS=y
CONFIG_NFS_DEBUG=y
CONFIG_NFS_DISABLE_UDP_SUPPORT=y
CONFIG_NFS_V4_2_READ_PLUS=y
CONFIG_NFSD=m
# CONFIG_NFSD_V2 is not set
CONFIG_NFSD_V3_ACL=y
CONFIG_NFSD_V4=y
CONFIG_NFSD_PNFS=y
# CONFIG_NFSD_BLOCKLAYOUT is not set
CONFIG_NFSD_SCSILAYOUT=y
# CONFIG_NFSD_FLEXFILELAYOUT is not set
# CONFIG_NFSD_V4_2_INTER_SSC is not set
CONFIG_NFSD_V4_SECURITY_LABEL=y
CONFIG_GRACE_PERIOD=y
CONFIG_LOCKD=y
CONFIG_LOCKD_V4=y
CONFIG_NFS_ACL_SUPPORT=y
CONFIG_NFS_COMMON=y
CONFIG_NFS_V4_2_SSC_HELPER=y
CONFIG_SUNRPC=y
CONFIG_SUNRPC_GSS=m
CONFIG_SUNRPC_BACKCHANNEL=y
CONFIG_RPCSEC_GSS_KRB5=m
# CONFIG_SUNRPC_DISABLE_INSECURE_ENCTYPES is not set
CONFIG_SUNRPC_DEBUG=y
CONFIG_SUNRPC_XPRT_RDMA=m
CONFIG_CEPH_FS=m
# CONFIG_CEPH_FSCACHE is not set
CONFIG_CEPH_FS_POSIX_ACL=y
# CONFIG_CEPH_FS_SECURITY_LABEL is not set
CONFIG_CIFS=m
CONFIG_CIFS_STATS2=y
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_UPCALL=y
CONFIG_CIFS_XATTR=y
CONFIG_CIFS_POSIX=y
CONFIG_CIFS_DEBUG=y
# CONFIG_CIFS_DEBUG2 is not set
# CONFIG_CIFS_DEBUG_DUMP_KEYS is not set
CONFIG_CIFS_DFS_UPCALL=y
# CONFIG_CIFS_SWN_UPCALL is not set
# CONFIG_CIFS_SMB_DIRECT is not set
# CONFIG_CIFS_FSCACHE is not set
# CONFIG_SMB_SERVER is not set
CONFIG_SMBFS_COMMON=m
# CONFIG_CODA_FS is not set
# CONFIG_AFS_FS is not set
CONFIG_9P_FS=y
CONFIG_9P_FS_POSIX_ACL=y
# CONFIG_9P_FS_SECURITY is not set
CONFIG_NLS=y
CONFIG_NLS_DEFAULT="utf8"
CONFIG_NLS_CODEPAGE_437=y
CONFIG_NLS_CODEPAGE_737=m
CONFIG_NLS_CODEPAGE_775=m
CONFIG_NLS_CODEPAGE_850=m
CONFIG_NLS_CODEPAGE_852=m
CONFIG_NLS_CODEPAGE_855=m
CONFIG_NLS_CODEPAGE_857=m
CONFIG_NLS_CODEPAGE_860=m
CONFIG_NLS_CODEPAGE_861=m
CONFIG_NLS_CODEPAGE_862=m
CONFIG_NLS_CODEPAGE_863=m
CONFIG_NLS_CODEPAGE_864=m
CONFIG_NLS_CODEPAGE_865=m
CONFIG_NLS_CODEPAGE_866=m
CONFIG_NLS_CODEPAGE_869=m
CONFIG_NLS_CODEPAGE_936=m
CONFIG_NLS_CODEPAGE_950=m
CONFIG_NLS_CODEPAGE_932=m
CONFIG_NLS_CODEPAGE_949=m
CONFIG_NLS_CODEPAGE_874=m
CONFIG_NLS_ISO8859_8=m
CONFIG_NLS_CODEPAGE_1250=m
CONFIG_NLS_CODEPAGE_1251=m
CONFIG_NLS_ASCII=y
CONFIG_NLS_ISO8859_1=m
CONFIG_NLS_ISO8859_2=m
CONFIG_NLS_ISO8859_3=m
CONFIG_NLS_ISO8859_4=m
CONFIG_NLS_ISO8859_5=m
CONFIG_NLS_ISO8859_6=m
CONFIG_NLS_ISO8859_7=m
CONFIG_NLS_ISO8859_9=m
CONFIG_NLS_ISO8859_13=m
CONFIG_NLS_ISO8859_14=m
CONFIG_NLS_ISO8859_15=m
CONFIG_NLS_KOI8_R=m
CONFIG_NLS_KOI8_U=m
CONFIG_NLS_MAC_ROMAN=m
CONFIG_NLS_MAC_CELTIC=m
CONFIG_NLS_MAC_CENTEURO=m
CONFIG_NLS_MAC_CROATIAN=m
CONFIG_NLS_MAC_CYRILLIC=m
CONFIG_NLS_MAC_GAELIC=m
CONFIG_NLS_MAC_GREEK=m
CONFIG_NLS_MAC_ICELAND=m
CONFIG_NLS_MAC_INUIT=m
CONFIG_NLS_MAC_ROMANIAN=m
CONFIG_NLS_MAC_TURKISH=m
CONFIG_NLS_UTF8=m
CONFIG_DLM=m
# CONFIG_DLM_DEPRECATED_API is not set
CONFIG_DLM_DEBUG=y
# CONFIG_UNICODE is not set
CONFIG_IO_WQ=y
# end of File systems

#
# Security options
#
CONFIG_KEYS=y
# CONFIG_KEYS_REQUEST_CACHE is not set
CONFIG_PERSISTENT_KEYRINGS=y
CONFIG_TRUSTED_KEYS=y
CONFIG_TRUSTED_KEYS_TPM=y
CONFIG_ENCRYPTED_KEYS=y
# CONFIG_USER_DECRYPTED_DATA is not set
# CONFIG_KEY_DH_OPERATIONS is not set
# CONFIG_KEY_NOTIFICATIONS is not set
# CONFIG_SECURITY_DMESG_RESTRICT is not set
CONFIG_SECURITY=y
CONFIG_SECURITYFS=y
CONFIG_SECURITY_NETWORK=y
# CONFIG_SECURITY_INFINIBAND is not set
CONFIG_SECURITY_NETWORK_XFRM=y
# CONFIG_SECURITY_PATH is not set
CONFIG_INTEL_TXT=y
CONFIG_HAVE_HARDENED_USERCOPY_ALLOCATOR=y
CONFIG_HARDENED_USERCOPY=y
CONFIG_FORTIFY_SOURCE=y
# CONFIG_STATIC_USERMODEHELPER is not set
# CONFIG_SECURITY_SELINUX is not set
# CONFIG_SECURITY_SMACK is not set
# CONFIG_SECURITY_TOMOYO is not set
# CONFIG_SECURITY_APPARMOR is not set
# CONFIG_SECURITY_LOADPIN is not set
CONFIG_SECURITY_YAMA=y
# CONFIG_SECURITY_SAFESETID is not set
# CONFIG_SECURITY_LOCKDOWN_LSM is not set
# CONFIG_SECURITY_LANDLOCK is not set
CONFIG_INTEGRITY=y
CONFIG_INTEGRITY_SIGNATURE=y
CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
CONFIG_INTEGRITY_TRUSTED_KEYRING=y
# CONFIG_INTEGRITY_PLATFORM_KEYRING is not set
CONFIG_INTEGRITY_AUDIT=y
CONFIG_IMA=y
# CONFIG_IMA_KEXEC is not set
CONFIG_IMA_MEASURE_PCR_IDX=10
CONFIG_IMA_NG_TEMPLATE=y
# CONFIG_IMA_SIG_TEMPLATE is not set
CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
CONFIG_IMA_DEFAULT_HASH_SHA1=y
# CONFIG_IMA_DEFAULT_HASH_SHA256 is not set
# CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
CONFIG_IMA_DEFAULT_HASH="sha1"
CONFIG_IMA_WRITE_POLICY=y
# CONFIG_IMA_READ_POLICY is not set
CONFIG_IMA_APPRAISE=y
# CONFIG_IMA_ARCH_POLICY is not set
# CONFIG_IMA_APPRAISE_BUILD_POLICY is not set
CONFIG_IMA_APPRAISE_BOOTPARAM=y
# CONFIG_IMA_APPRAISE_MODSIG is not set
CONFIG_IMA_TRUSTED_KEYRING=y
# CONFIG_IMA_BLACKLIST_KEYRING is not set
# CONFIG_IMA_LOAD_X509 is not set
CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=y
CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=y
# CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set
# CONFIG_IMA_DISABLE_HTABLE is not set
# CONFIG_EVM is not set
CONFIG_DEFAULT_SECURITY_DAC=y
CONFIG_LSM="landlock,lockdown,yama,loadpin,safesetid,integrity,bpf"

#
# Kernel hardening options
#

#
# Memory initialization
#
CONFIG_INIT_STACK_NONE=y
# CONFIG_GCC_PLUGIN_STRUCTLEAK_USER is not set
# CONFIG_GCC_PLUGIN_STACKLEAK is not set
# CONFIG_INIT_ON_ALLOC_DEFAULT_ON is not set
# CONFIG_INIT_ON_FREE_DEFAULT_ON is not set
CONFIG_CC_HAS_ZERO_CALL_USED_REGS=y
# CONFIG_ZERO_CALL_USED_REGS is not set
# end of Memory initialization

CONFIG_RANDSTRUCT_NONE=y
# CONFIG_RANDSTRUCT_FULL is not set
# CONFIG_RANDSTRUCT_PERFORMANCE is not set
# end of Kernel hardening options
# end of Security options

CONFIG_XOR_BLOCKS=m
CONFIG_ASYNC_CORE=m
CONFIG_ASYNC_MEMCPY=m
CONFIG_ASYNC_XOR=m
CONFIG_ASYNC_PQ=m
CONFIG_ASYNC_RAID6_RECOV=m
CONFIG_CRYPTO=y

#
# Crypto core or helper
#
CONFIG_CRYPTO_ALGAPI=y
CONFIG_CRYPTO_ALGAPI2=y
CONFIG_CRYPTO_AEAD=y
CONFIG_CRYPTO_AEAD2=y
CONFIG_CRYPTO_SKCIPHER=y
CONFIG_CRYPTO_SKCIPHER2=y
CONFIG_CRYPTO_HASH=y
CONFIG_CRYPTO_HASH2=y
CONFIG_CRYPTO_RNG=y
CONFIG_CRYPTO_RNG2=y
CONFIG_CRYPTO_RNG_DEFAULT=y
CONFIG_CRYPTO_AKCIPHER2=y
CONFIG_CRYPTO_AKCIPHER=y
CONFIG_CRYPTO_KPP2=y
CONFIG_CRYPTO_KPP=m
CONFIG_CRYPTO_ACOMP2=y
CONFIG_CRYPTO_MANAGER=y
CONFIG_CRYPTO_MANAGER2=y
CONFIG_CRYPTO_USER=m
CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
CONFIG_CRYPTO_NULL=y
CONFIG_CRYPTO_NULL2=y
CONFIG_CRYPTO_PCRYPT=m
CONFIG_CRYPTO_CRYPTD=y
CONFIG_CRYPTO_AUTHENC=m
# CONFIG_CRYPTO_TEST is not set
CONFIG_CRYPTO_SIMD=y
# end of Crypto core or helper

#
# Public-key cryptography
#
CONFIG_CRYPTO_RSA=y
CONFIG_CRYPTO_DH=m
# CONFIG_CRYPTO_DH_RFC7919_GROUPS is not set
CONFIG_CRYPTO_ECC=m
CONFIG_CRYPTO_ECDH=m
# CONFIG_CRYPTO_ECDSA is not set
# CONFIG_CRYPTO_ECRDSA is not set
# CONFIG_CRYPTO_SM2 is not set
# CONFIG_CRYPTO_CURVE25519 is not set
# end of Public-key cryptography

#
# Block ciphers
#
CONFIG_CRYPTO_AES=y
# CONFIG_CRYPTO_AES_TI is not set
CONFIG_CRYPTO_ANUBIS=m
# CONFIG_CRYPTO_ARIA is not set
CONFIG_CRYPTO_BLOWFISH=m
CONFIG_CRYPTO_BLOWFISH_COMMON=m
CONFIG_CRYPTO_CAMELLIA=m
CONFIG_CRYPTO_CAST_COMMON=m
CONFIG_CRYPTO_CAST5=m
CONFIG_CRYPTO_CAST6=m
CONFIG_CRYPTO_DES=m
CONFIG_CRYPTO_FCRYPT=m
CONFIG_CRYPTO_KHAZAD=m
CONFIG_CRYPTO_SEED=m
CONFIG_CRYPTO_SERPENT=m
# CONFIG_CRYPTO_SM4_GENERIC is not set
CONFIG_CRYPTO_TEA=m
CONFIG_CRYPTO_TWOFISH=m
CONFIG_CRYPTO_TWOFISH_COMMON=m
# end of Block ciphers

#
# Length-preserving ciphers and modes
#
# CONFIG_CRYPTO_ADIANTUM is not set
CONFIG_CRYPTO_ARC4=m
CONFIG_CRYPTO_CHACHA20=m
CONFIG_CRYPTO_CBC=y
CONFIG_CRYPTO_CFB=y
CONFIG_CRYPTO_CTR=y
CONFIG_CRYPTO_CTS=m
CONFIG_CRYPTO_ECB=y
# CONFIG_CRYPTO_HCTR2 is not set
# CONFIG_CRYPTO_KEYWRAP is not set
CONFIG_CRYPTO_LRW=m
# CONFIG_CRYPTO_OFB is not set
CONFIG_CRYPTO_PCBC=m
CONFIG_CRYPTO_XTS=m
# end of Length-preserving ciphers and modes

#
# AEAD (authenticated encryption with associated data) ciphers
#
# CONFIG_CRYPTO_AEGIS128 is not set
# CONFIG_CRYPTO_CHACHA20POLY1305 is not set
CONFIG_CRYPTO_CCM=m
CONFIG_CRYPTO_GCM=y
CONFIG_CRYPTO_SEQIV=y
CONFIG_CRYPTO_ECHAINIV=m
CONFIG_CRYPTO_ESSIV=m
# end of AEAD (authenticated encryption with associated data) ciphers

#
# Hashes, digests, and MACs
#
CONFIG_CRYPTO_BLAKE2B=m
CONFIG_CRYPTO_CMAC=m
CONFIG_CRYPTO_GHASH=y
CONFIG_CRYPTO_HMAC=y
CONFIG_CRYPTO_MD4=m
CONFIG_CRYPTO_MD5=y
CONFIG_CRYPTO_MICHAEL_MIC=m
# CONFIG_CRYPTO_POLY1305 is not set
CONFIG_CRYPTO_RMD160=m
CONFIG_CRYPTO_SHA1=y
CONFIG_CRYPTO_SHA256=y
CONFIG_CRYPTO_SHA512=y
CONFIG_CRYPTO_SHA3=m
CONFIG_CRYPTO_SM3=m
CONFIG_CRYPTO_SM3_GENERIC=m
# CONFIG_CRYPTO_STREEBOG is not set
CONFIG_CRYPTO_VMAC=m
CONFIG_CRYPTO_WP512=m
CONFIG_CRYPTO_XCBC=m
CONFIG_CRYPTO_XXHASH=m
# end of Hashes, digests, and MACs

#
# CRCs (cyclic redundancy checks)
#
CONFIG_CRYPTO_CRC32C=y
CONFIG_CRYPTO_CRC32=m
CONFIG_CRYPTO_CRCT10DIF=y
CONFIG_CRYPTO_CRC64_ROCKSOFT=m
# end of CRCs (cyclic redundancy checks)

#
# Compression
#
CONFIG_CRYPTO_DEFLATE=y
CONFIG_CRYPTO_LZO=y
# CONFIG_CRYPTO_842 is not set
# CONFIG_CRYPTO_LZ4 is not set
# CONFIG_CRYPTO_LZ4HC is not set
# CONFIG_CRYPTO_ZSTD is not set
# end of Compression

#
# Random number generation
#
CONFIG_CRYPTO_ANSI_CPRNG=m
CONFIG_CRYPTO_DRBG_MENU=y
CONFIG_CRYPTO_DRBG_HMAC=y
CONFIG_CRYPTO_DRBG_HASH=y
CONFIG_CRYPTO_DRBG_CTR=y
CONFIG_CRYPTO_DRBG=y
CONFIG_CRYPTO_JITTERENTROPY=y
# end of Random number generation

#
# Userspace interface
#
CONFIG_CRYPTO_USER_API=y
CONFIG_CRYPTO_USER_API_HASH=y
CONFIG_CRYPTO_USER_API_SKCIPHER=y
CONFIG_CRYPTO_USER_API_RNG=y
# CONFIG_CRYPTO_USER_API_RNG_CAVP is not set
CONFIG_CRYPTO_USER_API_AEAD=y
CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE=y
# CONFIG_CRYPTO_STATS is not set
# end of Userspace interface

CONFIG_CRYPTO_HASH_INFO=y

#
# Accelerated Cryptographic Algorithms for CPU (x86)
#
# CONFIG_CRYPTO_CURVE25519_X86 is not set
CONFIG_CRYPTO_AES_NI_INTEL=y
CONFIG_CRYPTO_BLOWFISH_X86_64=m
CONFIG_CRYPTO_CAMELLIA_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64=m
CONFIG_CRYPTO_CAST5_AVX_X86_64=m
CONFIG_CRYPTO_CAST6_AVX_X86_64=m
# CONFIG_CRYPTO_DES3_EDE_X86_64 is not set
CONFIG_CRYPTO_SERPENT_SSE2_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX2_X86_64=m
# CONFIG_CRYPTO_SM4_AESNI_AVX_X86_64 is not set
# CONFIG_CRYPTO_SM4_AESNI_AVX2_X86_64 is not set
CONFIG_CRYPTO_TWOFISH_X86_64=m
CONFIG_CRYPTO_TWOFISH_X86_64_3WAY=m
CONFIG_CRYPTO_TWOFISH_AVX_X86_64=m
# CONFIG_CRYPTO_ARIA_AESNI_AVX_X86_64 is not set
CONFIG_CRYPTO_CHACHA20_X86_64=m
# CONFIG_CRYPTO_AEGIS128_AESNI_SSE2 is not set
# CONFIG_CRYPTO_NHPOLY1305_SSE2 is not set
# CONFIG_CRYPTO_NHPOLY1305_AVX2 is not set
# CONFIG_CRYPTO_BLAKE2S_X86 is not set
# CONFIG_CRYPTO_POLYVAL_CLMUL_NI is not set
# CONFIG_CRYPTO_POLY1305_X86_64 is not set
CONFIG_CRYPTO_SHA1_SSSE3=y
CONFIG_CRYPTO_SHA256_SSSE3=y
CONFIG_CRYPTO_SHA512_SSSE3=m
# CONFIG_CRYPTO_SM3_AVX_X86_64 is not set
CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL=m
CONFIG_CRYPTO_CRC32C_INTEL=m
CONFIG_CRYPTO_CRC32_PCLMUL=m
CONFIG_CRYPTO_CRCT10DIF_PCLMUL=m
# end of Accelerated Cryptographic Algorithms for CPU (x86)

CONFIG_CRYPTO_HW=y
CONFIG_CRYPTO_DEV_PADLOCK=m
CONFIG_CRYPTO_DEV_PADLOCK_AES=m
CONFIG_CRYPTO_DEV_PADLOCK_SHA=m
# CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
# CONFIG_CRYPTO_DEV_ATMEL_SHA204A is not set
CONFIG_CRYPTO_DEV_CCP=y
CONFIG_CRYPTO_DEV_QAT=m
CONFIG_CRYPTO_DEV_QAT_DH895xCC=m
CONFIG_CRYPTO_DEV_QAT_C3XXX=m
CONFIG_CRYPTO_DEV_QAT_C62X=m
# CONFIG_CRYPTO_DEV_QAT_4XXX is not set
CONFIG_CRYPTO_DEV_QAT_DH895xCCVF=m
CONFIG_CRYPTO_DEV_QAT_C3XXXVF=m
CONFIG_CRYPTO_DEV_QAT_C62XVF=m
CONFIG_CRYPTO_DEV_NITROX=m
CONFIG_CRYPTO_DEV_NITROX_CNN55XX=m
# CONFIG_CRYPTO_DEV_VIRTIO is not set
# CONFIG_CRYPTO_DEV_SAFEXCEL is not set
# CONFIG_CRYPTO_DEV_AMLOGIC_GXL is not set
CONFIG_ASYMMETRIC_KEY_TYPE=y
CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
CONFIG_X509_CERTIFICATE_PARSER=y
# CONFIG_PKCS8_PRIVATE_KEY_PARSER is not set
CONFIG_PKCS7_MESSAGE_PARSER=y
# CONFIG_PKCS7_TEST_KEY is not set
CONFIG_SIGNED_PE_FILE_VERIFICATION=y
# CONFIG_FIPS_SIGNATURE_SELFTEST is not set

#
# Certificates for signature checking
#
CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"
CONFIG_MODULE_SIG_KEY_TYPE_RSA=y
# CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
# CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
# CONFIG_SECONDARY_TRUSTED_KEYRING is not set
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
# CONFIG_SYSTEM_REVOCATION_LIST is not set
# CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE is not set
# end of Certificates for signature checking

CONFIG_BINARY_PRINTF=y

#
# Library routines
#
CONFIG_RAID6_PQ=m
CONFIG_RAID6_PQ_BENCHMARK=y
# CONFIG_PACKING is not set
CONFIG_BITREVERSE=y
CONFIG_GENERIC_STRNCPY_FROM_USER=y
CONFIG_GENERIC_STRNLEN_USER=y
CONFIG_GENERIC_NET_UTILS=y
CONFIG_CORDIC=m
# CONFIG_PRIME_NUMBERS is not set
CONFIG_RATIONAL=y
CONFIG_GENERIC_PCI_IOMAP=y
CONFIG_GENERIC_IOMAP=y
CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
CONFIG_ARCH_HAS_FAST_MULTIPLIER=y
CONFIG_ARCH_USE_SYM_ANNOTATIONS=y

#
# Crypto library routines
#
CONFIG_CRYPTO_LIB_UTILS=y
CONFIG_CRYPTO_LIB_AES=y
CONFIG_CRYPTO_LIB_ARC4=m
CONFIG_CRYPTO_LIB_GF128MUL=y
CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC=y
CONFIG_CRYPTO_ARCH_HAVE_LIB_CHACHA=m
CONFIG_CRYPTO_LIB_CHACHA_GENERIC=m
# CONFIG_CRYPTO_LIB_CHACHA is not set
# CONFIG_CRYPTO_LIB_CURVE25519 is not set
CONFIG_CRYPTO_LIB_DES=m
CONFIG_CRYPTO_LIB_POLY1305_RSIZE=11
# CONFIG_CRYPTO_LIB_POLY1305 is not set
# CONFIG_CRYPTO_LIB_CHACHA20POLY1305 is not set
CONFIG_CRYPTO_LIB_SHA1=y
CONFIG_CRYPTO_LIB_SHA256=y
# end of Crypto library routines

CONFIG_CRC_CCITT=y
CONFIG_CRC16=y
CONFIG_CRC_T10DIF=y
CONFIG_CRC64_ROCKSOFT=m
CONFIG_CRC_ITU_T=m
CONFIG_CRC32=y
# CONFIG_CRC32_SELFTEST is not set
CONFIG_CRC32_SLICEBY8=y
# CONFIG_CRC32_SLICEBY4 is not set
# CONFIG_CRC32_SARWATE is not set
# CONFIG_CRC32_BIT is not set
CONFIG_CRC64=m
# CONFIG_CRC4 is not set
CONFIG_CRC7=m
CONFIG_LIBCRC32C=m
CONFIG_CRC8=m
CONFIG_XXHASH=y
# CONFIG_RANDOM32_SELFTEST is not set
CONFIG_ZLIB_INFLATE=y
CONFIG_ZLIB_DEFLATE=y
CONFIG_LZO_COMPRESS=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_LZ4_DECOMPRESS=y
CONFIG_ZSTD_COMMON=y
CONFIG_ZSTD_COMPRESS=m
CONFIG_ZSTD_DECOMPRESS=y
CONFIG_XZ_DEC=y
CONFIG_XZ_DEC_X86=y
CONFIG_XZ_DEC_POWERPC=y
CONFIG_XZ_DEC_IA64=y
CONFIG_XZ_DEC_ARM=y
CONFIG_XZ_DEC_ARMTHUMB=y
CONFIG_XZ_DEC_SPARC=y
# CONFIG_XZ_DEC_MICROLZMA is not set
CONFIG_XZ_DEC_BCJ=y
# CONFIG_XZ_DEC_TEST is not set
CONFIG_DECOMPRESS_GZIP=y
CONFIG_DECOMPRESS_BZIP2=y
CONFIG_DECOMPRESS_LZMA=y
CONFIG_DECOMPRESS_XZ=y
CONFIG_DECOMPRESS_LZO=y
CONFIG_DECOMPRESS_LZ4=y
CONFIG_DECOMPRESS_ZSTD=y
CONFIG_GENERIC_ALLOCATOR=y
CONFIG_REED_SOLOMON=m
CONFIG_REED_SOLOMON_ENC8=y
CONFIG_REED_SOLOMON_DEC8=y
CONFIG_TEXTSEARCH=y
CONFIG_TEXTSEARCH_KMP=m
CONFIG_TEXTSEARCH_BM=m
CONFIG_TEXTSEARCH_FSM=m
CONFIG_INTERVAL_TREE=y
CONFIG_XARRAY_MULTI=y
CONFIG_ASSOCIATIVE_ARRAY=y
CONFIG_HAS_IOMEM=y
CONFIG_HAS_IOPORT_MAP=y
CONFIG_HAS_DMA=y
CONFIG_DMA_OPS=y
CONFIG_NEED_SG_DMA_LENGTH=y
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_ARCH_DMA_ADDR_T_64BIT=y
CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED=y
CONFIG_SWIOTLB=y
CONFIG_DMA_CMA=y
# CONFIG_DMA_PERNUMA_CMA is not set

#
# Default contiguous memory area size:
#
CONFIG_CMA_SIZE_MBYTES=200
CONFIG_CMA_SIZE_SEL_MBYTES=y
# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
# CONFIG_CMA_SIZE_SEL_MIN is not set
# CONFIG_CMA_SIZE_SEL_MAX is not set
CONFIG_CMA_ALIGNMENT=8
# CONFIG_DMA_API_DEBUG is not set
# CONFIG_DMA_MAP_BENCHMARK is not set
CONFIG_SGL_ALLOC=y
CONFIG_CHECK_SIGNATURE=y
CONFIG_CPUMASK_OFFSTACK=y
# CONFIG_FORCE_NR_CPUS is not set
CONFIG_CPU_RMAP=y
CONFIG_DQL=y
CONFIG_GLOB=y
# CONFIG_GLOB_SELFTEST is not set
CONFIG_NLATTR=y
CONFIG_CLZ_TAB=y
CONFIG_IRQ_POLL=y
CONFIG_MPILIB=y
CONFIG_SIGNATURE=y
CONFIG_DIMLIB=y
CONFIG_OID_REGISTRY=y
CONFIG_UCS2_STRING=y
CONFIG_HAVE_GENERIC_VDSO=y
CONFIG_GENERIC_GETTIMEOFDAY=y
CONFIG_GENERIC_VDSO_TIME_NS=y
CONFIG_FONT_SUPPORT=y
# CONFIG_FONTS is not set
CONFIG_FONT_8x8=y
CONFIG_FONT_8x16=y
CONFIG_SG_POOL=y
CONFIG_ARCH_HAS_PMEM_API=y
CONFIG_MEMREGION=y
CONFIG_ARCH_HAS_CPU_CACHE_INVALIDATE_MEMREGION=y
CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE=y
CONFIG_ARCH_HAS_COPY_MC=y
CONFIG_ARCH_STACKWALK=y
CONFIG_STACKDEPOT=y
CONFIG_STACKDEPOT_ALWAYS_INIT=y
CONFIG_SBITMAP=y
# end of Library routines

CONFIG_ASN1_ENCODER=y

#
# Kernel hacking
#

#
# printk and dmesg options
#
CONFIG_PRINTK_TIME=y
CONFIG_PRINTK_CALLER=y
# CONFIG_STACKTRACE_BUILD_ID is not set
CONFIG_CONSOLE_LOGLEVEL_DEFAULT=7
CONFIG_CONSOLE_LOGLEVEL_QUIET=4
CONFIG_MESSAGE_LOGLEVEL_DEFAULT=4
CONFIG_BOOT_PRINTK_DELAY=y
CONFIG_DYNAMIC_DEBUG=y
CONFIG_DYNAMIC_DEBUG_CORE=y
CONFIG_SYMBOLIC_ERRNAME=y
CONFIG_DEBUG_BUGVERBOSE=y
# end of printk and dmesg options

CONFIG_DEBUG_KERNEL=y
CONFIG_DEBUG_MISC=y

#
# Compile-time checks and compiler options
#
CONFIG_DEBUG_INFO=y
CONFIG_AS_HAS_NON_CONST_LEB128=y
# CONFIG_DEBUG_INFO_NONE is not set
# CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT is not set
CONFIG_DEBUG_INFO_DWARF4=y
# CONFIG_DEBUG_INFO_DWARF5 is not set
CONFIG_DEBUG_INFO_REDUCED=y
CONFIG_DEBUG_INFO_COMPRESSED_NONE=y
# CONFIG_DEBUG_INFO_COMPRESSED_ZLIB is not set
# CONFIG_DEBUG_INFO_SPLIT is not set
CONFIG_PAHOLE_HAS_SPLIT_BTF=y
# CONFIG_GDB_SCRIPTS is not set
CONFIG_FRAME_WARN=8192
CONFIG_STRIP_ASM_SYMS=y
# CONFIG_READABLE_ASM is not set
# CONFIG_HEADERS_INSTALL is not set
CONFIG_DEBUG_SECTION_MISMATCH=y
CONFIG_SECTION_MISMATCH_WARN_ONLY=y
# CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B is not set
CONFIG_OBJTOOL=y
# CONFIG_VMLINUX_MAP is not set
# CONFIG_DEBUG_FORCE_WEAK_PER_CPU is not set
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
CONFIG_MAGIC_SYSRQ=y
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
CONFIG_MAGIC_SYSRQ_SERIAL=y
CONFIG_MAGIC_SYSRQ_SERIAL_SEQUENCE=""
CONFIG_DEBUG_FS=y
CONFIG_DEBUG_FS_ALLOW_ALL=y
# CONFIG_DEBUG_FS_DISALLOW_MOUNT is not set
# CONFIG_DEBUG_FS_ALLOW_NONE is not set
CONFIG_HAVE_ARCH_KGDB=y
# CONFIG_KGDB is not set
CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
CONFIG_UBSAN=y
# CONFIG_UBSAN_TRAP is not set
CONFIG_CC_HAS_UBSAN_BOUNDS=y
CONFIG_UBSAN_BOUNDS=y
CONFIG_UBSAN_ONLY_BOUNDS=y
CONFIG_UBSAN_SHIFT=y
# CONFIG_UBSAN_DIV_ZERO is not set
# CONFIG_UBSAN_BOOL is not set
# CONFIG_UBSAN_ENUM is not set
# CONFIG_UBSAN_ALIGNMENT is not set
CONFIG_UBSAN_SANITIZE_ALL=y
# CONFIG_TEST_UBSAN is not set
CONFIG_HAVE_ARCH_KCSAN=y
CONFIG_HAVE_KCSAN_COMPILER=y
# end of Generic Kernel Debugging Instruments

#
# Networking Debugging
#
# CONFIG_NET_DEV_REFCNT_TRACKER is not set
# CONFIG_NET_NS_REFCNT_TRACKER is not set
# CONFIG_DEBUG_NET is not set
# end of Networking Debugging

#
# Memory Debugging
#
CONFIG_PAGE_EXTENSION=y
# CONFIG_DEBUG_PAGEALLOC is not set
CONFIG_SLUB_DEBUG=y
# CONFIG_SLUB_DEBUG_ON is not set
CONFIG_PAGE_OWNER=y
# CONFIG_PAGE_TABLE_CHECK is not set
# CONFIG_PAGE_POISONING is not set
# CONFIG_DEBUG_PAGE_REF is not set
# CONFIG_DEBUG_RODATA_TEST is not set
CONFIG_ARCH_HAS_DEBUG_WX=y
# CONFIG_DEBUG_WX is not set
CONFIG_GENERIC_PTDUMP=y
# CONFIG_PTDUMP_DEBUGFS is not set
# CONFIG_DEBUG_OBJECTS is not set
# CONFIG_SHRINKER_DEBUG is not set
CONFIG_HAVE_DEBUG_KMEMLEAK=y
# CONFIG_DEBUG_KMEMLEAK is not set
# CONFIG_DEBUG_STACK_USAGE is not set
# CONFIG_SCHED_STACK_END_CHECK is not set
CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE=y
# CONFIG_DEBUG_VM is not set
# CONFIG_DEBUG_VM_PGTABLE is not set
CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
# CONFIG_DEBUG_VIRTUAL is not set
CONFIG_DEBUG_MEMORY_INIT=y
# CONFIG_DEBUG_PER_CPU_MAPS is not set
CONFIG_HAVE_ARCH_KASAN=y
CONFIG_HAVE_ARCH_KASAN_VMALLOC=y
CONFIG_CC_HAS_KASAN_GENERIC=y
CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS=y
CONFIG_KASAN=y
CONFIG_KASAN_GENERIC=y
# CONFIG_KASAN_OUTLINE is not set
CONFIG_KASAN_INLINE=y
CONFIG_KASAN_STACK=y
CONFIG_KASAN_VMALLOC=y
# CONFIG_KASAN_MODULE_TEST is not set
CONFIG_HAVE_ARCH_KFENCE=y
# CONFIG_KFENCE is not set
CONFIG_HAVE_ARCH_KMSAN=y
# end of Memory Debugging

CONFIG_DEBUG_SHIRQ=y

#
# Debug Oops, Lockups and Hangs
#
CONFIG_PANIC_ON_OOPS=y
CONFIG_PANIC_ON_OOPS_VALUE=1
CONFIG_PANIC_TIMEOUT=0
CONFIG_LOCKUP_DETECTOR=y
CONFIG_SOFTLOCKUP_DETECTOR=y
# CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC is not set
CONFIG_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HARDLOCKUP_CHECK_TIMESTAMP=y
CONFIG_HARDLOCKUP_DETECTOR=y
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y
CONFIG_DETECT_HUNG_TASK=y
CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=480
# CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
CONFIG_WQ_WATCHDOG=y
# CONFIG_TEST_LOCKUP is not set
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
CONFIG_SCHED_DEBUG=y
CONFIG_SCHED_INFO=y
CONFIG_SCHEDSTATS=y
# end of Scheduler Debugging

# CONFIG_DEBUG_TIMEKEEPING is not set

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
CONFIG_LOCK_DEBUGGING_SUPPORT=y
# CONFIG_PROVE_LOCKING is not set
# CONFIG_LOCK_STAT is not set
# CONFIG_DEBUG_RT_MUTEXES is not set
# CONFIG_DEBUG_SPINLOCK is not set
# CONFIG_DEBUG_MUTEXES is not set
# CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
# CONFIG_DEBUG_RWSEMS is not set
# CONFIG_DEBUG_LOCK_ALLOC is not set
CONFIG_DEBUG_ATOMIC_SLEEP=y
# CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
# CONFIG_LOCK_TORTURE_TEST is not set
# CONFIG_WW_MUTEX_SELFTEST is not set
# CONFIG_SCF_TORTURE_TEST is not set
# CONFIG_CSD_LOCK_WAIT_DEBUG is not set
# end of Lock Debugging (spinlocks, mutexes, etc...)

# CONFIG_DEBUG_IRQFLAGS is not set
CONFIG_STACKTRACE=y
# CONFIG_WARN_ALL_UNSEEDED_RANDOM is not set
# CONFIG_DEBUG_KOBJECT is not set

#
# Debug kernel data structures
#
CONFIG_DEBUG_LIST=y
# CONFIG_DEBUG_PLIST is not set
# CONFIG_DEBUG_SG is not set
# CONFIG_DEBUG_NOTIFIERS is not set
CONFIG_BUG_ON_DATA_CORRUPTION=y
# CONFIG_DEBUG_MAPLE_TREE is not set
# end of Debug kernel data structures

# CONFIG_DEBUG_CREDENTIALS is not set

#
# RCU Debugging
#
CONFIG_TORTURE_TEST=m
# CONFIG_RCU_SCALE_TEST is not set
# CONFIG_RCU_TORTURE_TEST is not set
CONFIG_RCU_REF_SCALE_TEST=m
CONFIG_RCU_CPU_STALL_TIMEOUT=60
CONFIG_RCU_EXP_CPU_STALL_TIMEOUT=0
# CONFIG_RCU_TRACE is not set
# CONFIG_RCU_EQS_DEBUG is not set
# end of RCU Debugging

# CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
CONFIG_LATENCYTOP=y
# CONFIG_DEBUG_CGROUP_REF is not set
CONFIG_USER_STACKTRACE_SUPPORT=y
CONFIG_NOP_TRACER=y
CONFIG_HAVE_RETHOOK=y
CONFIG_RETHOOK=y
CONFIG_HAVE_FUNCTION_TRACER=y
CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_ARGS=y
CONFIG_HAVE_DYNAMIC_FTRACE_NO_PATCHABLE=y
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
CONFIG_HAVE_FENTRY=y
CONFIG_HAVE_OBJTOOL_MCOUNT=y
CONFIG_HAVE_OBJTOOL_NOP_MCOUNT=y
CONFIG_HAVE_C_RECORDMCOUNT=y
CONFIG_HAVE_BUILDTIME_MCOUNT_SORT=y
CONFIG_BUILDTIME_MCOUNT_SORT=y
CONFIG_TRACER_MAX_TRACE=y
CONFIG_TRACE_CLOCK=y
CONFIG_RING_BUFFER=y
CONFIG_EVENT_TRACING=y
CONFIG_CONTEXT_SWITCH_TRACER=y
CONFIG_TRACING=y
CONFIG_GENERIC_TRACER=y
CONFIG_TRACING_SUPPORT=y
CONFIG_FTRACE=y
# CONFIG_BOOTTIME_TRACING is not set
CONFIG_FUNCTION_TRACER=y
CONFIG_FUNCTION_GRAPH_TRACER=y
CONFIG_DYNAMIC_FTRACE=y
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_DYNAMIC_FTRACE_WITH_ARGS=y
# CONFIG_FPROBE is not set
CONFIG_FUNCTION_PROFILER=y
CONFIG_STACK_TRACER=y
# CONFIG_IRQSOFF_TRACER is not set
CONFIG_SCHED_TRACER=y
CONFIG_HWLAT_TRACER=y
# CONFIG_OSNOISE_TRACER is not set
# CONFIG_TIMERLAT_TRACER is not set
# CONFIG_MMIOTRACE is not set
CONFIG_FTRACE_SYSCALLS=y
CONFIG_TRACER_SNAPSHOT=y
# CONFIG_TRACER_SNAPSHOT_PER_CPU_SWAP is not set
CONFIG_BRANCH_PROFILE_NONE=y
# CONFIG_PROFILE_ANNOTATED_BRANCHES is not set
# CONFIG_BLK_DEV_IO_TRACE is not set
CONFIG_KPROBE_EVENTS=y
# CONFIG_KPROBE_EVENTS_ON_NOTRACE is not set
CONFIG_UPROBE_EVENTS=y
CONFIG_BPF_EVENTS=y
CONFIG_DYNAMIC_EVENTS=y
CONFIG_PROBE_EVENTS=y
CONFIG_BPF_KPROBE_OVERRIDE=y
CONFIG_FTRACE_MCOUNT_RECORD=y
CONFIG_FTRACE_MCOUNT_USE_CC=y
CONFIG_TRACING_MAP=y
CONFIG_SYNTH_EVENTS=y
CONFIG_HIST_TRIGGERS=y
# CONFIG_TRACE_EVENT_INJECT is not set
# CONFIG_TRACEPOINT_BENCHMARK is not set
CONFIG_RING_BUFFER_BENCHMARK=m
# CONFIG_TRACE_EVAL_MAP_FILE is not set
# CONFIG_FTRACE_RECORD_RECURSION is not set
# CONFIG_FTRACE_STARTUP_TEST is not set
# CONFIG_FTRACE_SORT_STARTUP_TEST is not set
# CONFIG_RING_BUFFER_STARTUP_TEST is not set
# CONFIG_RING_BUFFER_VALIDATE_TIME_DELTAS is not set
# CONFIG_PREEMPTIRQ_DELAY_TEST is not set
# CONFIG_SYNTH_EVENT_GEN_TEST is not set
# CONFIG_KPROBE_EVENT_GEN_TEST is not set
# CONFIG_HIST_TRIGGERS_DEBUG is not set
# CONFIG_RV is not set
CONFIG_PROVIDE_OHCI1394_DMA_INIT=y
# CONFIG_SAMPLES is not set
CONFIG_HAVE_SAMPLE_FTRACE_DIRECT=y
CONFIG_HAVE_SAMPLE_FTRACE_DIRECT_MULTI=y
CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED=y
CONFIG_STRICT_DEVMEM=y
# CONFIG_IO_STRICT_DEVMEM is not set

#
# x86 Debugging
#
CONFIG_EARLY_PRINTK_USB=y
CONFIG_X86_VERBOSE_BOOTUP=y
CONFIG_EARLY_PRINTK=y
CONFIG_EARLY_PRINTK_DBGP=y
CONFIG_EARLY_PRINTK_USB_XDBC=y
# CONFIG_EFI_PGT_DUMP is not set
# CONFIG_DEBUG_TLBFLUSH is not set
CONFIG_HAVE_MMIOTRACE_SUPPORT=y
# CONFIG_X86_DECODER_SELFTEST is not set
CONFIG_IO_DELAY_0X80=y
# CONFIG_IO_DELAY_0XED is not set
# CONFIG_IO_DELAY_UDELAY is not set
# CONFIG_IO_DELAY_NONE is not set
CONFIG_DEBUG_BOOT_PARAMS=y
# CONFIG_CPA_DEBUG is not set
# CONFIG_DEBUG_ENTRY is not set
# CONFIG_DEBUG_NMI_SELFTEST is not set
# CONFIG_X86_DEBUG_FPU is not set
# CONFIG_PUNIT_ATOM_DEBUG is not set
CONFIG_UNWINDER_ORC=y
# CONFIG_UNWINDER_FRAME_POINTER is not set
# end of x86 Debugging

#
# Kernel Testing and Coverage
#
# CONFIG_KUNIT is not set
# CONFIG_NOTIFIER_ERROR_INJECTION is not set
CONFIG_FUNCTION_ERROR_INJECTION=y
CONFIG_FAULT_INJECTION=y
# CONFIG_FAILSLAB is not set
# CONFIG_FAIL_PAGE_ALLOC is not set
# CONFIG_FAULT_INJECTION_USERCOPY is not set
CONFIG_FAIL_MAKE_REQUEST=y
# CONFIG_FAIL_IO_TIMEOUT is not set
# CONFIG_FAIL_FUTEX is not set
CONFIG_FAULT_INJECTION_DEBUG_FS=y
# CONFIG_FAIL_FUNCTION is not set
# CONFIG_FAIL_MMC_REQUEST is not set
# CONFIG_FAIL_SUNRPC is not set
# CONFIG_FAULT_INJECTION_STACKTRACE_FILTER is not set
CONFIG_ARCH_HAS_KCOV=y
CONFIG_CC_HAS_SANCOV_TRACE_PC=y
# CONFIG_KCOV is not set
CONFIG_RUNTIME_TESTING_MENU=y
# CONFIG_LKDTM is not set
# CONFIG_TEST_MIN_HEAP is not set
# CONFIG_TEST_DIV64 is not set
# CONFIG_BACKTRACE_SELF_TEST is not set
# CONFIG_TEST_REF_TRACKER is not set
# CONFIG_RBTREE_TEST is not set
# CONFIG_REED_SOLOMON_TEST is not set
# CONFIG_INTERVAL_TREE_TEST is not set
# CONFIG_PERCPU_TEST is not set
# CONFIG_ATOMIC64_SELFTEST is not set
# CONFIG_ASYNC_RAID6_TEST is not set
# CONFIG_TEST_HEXDUMP is not set
# CONFIG_STRING_SELFTEST is not set
# CONFIG_TEST_STRING_HELPERS is not set
# CONFIG_TEST_KSTRTOX is not set
# CONFIG_TEST_PRINTF is not set
# CONFIG_TEST_SCANF is not set
# CONFIG_TEST_BITMAP is not set
# CONFIG_TEST_UUID is not set
# CONFIG_TEST_XARRAY is not set
# CONFIG_TEST_MAPLE_TREE is not set
# CONFIG_TEST_RHASHTABLE is not set
# CONFIG_TEST_IDA is not set
# CONFIG_TEST_LKM is not set
# CONFIG_TEST_BITOPS is not set
# CONFIG_TEST_VMALLOC is not set
# CONFIG_TEST_USER_COPY is not set
CONFIG_TEST_BPF=m
# CONFIG_TEST_BLACKHOLE_DEV is not set
# CONFIG_FIND_BIT_BENCHMARK is not set
# CONFIG_TEST_FIRMWARE is not set
# CONFIG_TEST_SYSCTL is not set
# CONFIG_TEST_UDELAY is not set
# CONFIG_TEST_STATIC_KEYS is not set
# CONFIG_TEST_DYNAMIC_DEBUG is not set
# CONFIG_TEST_KMOD is not set
# CONFIG_TEST_MEMCAT_P is not set
# CONFIG_TEST_LIVEPATCH is not set
# CONFIG_TEST_MEMINIT is not set
# CONFIG_TEST_HMM is not set
# CONFIG_TEST_FREE_PAGES is not set
# CONFIG_TEST_FPU is not set
# CONFIG_TEST_CLOCKSOURCE_WATCHDOG is not set
CONFIG_ARCH_USE_MEMTEST=y
# CONFIG_MEMTEST is not set
# end of Kernel Testing and Coverage

#
# Rust hacking
#
# end of Rust hacking
# end of Kernel hacking

--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="job-script"

#!/bin/sh

export_top_env()
{
	export suite='xfstests'
	export testcase='xfstests'
	export category='functional'
	export need_memory='3G'
	export job_origin='xfstests-btrfs.yaml'
	export queue_cmdline_keys='branch
commit
kbuild_queue_analysis'
	export queue='validate'
	export testbox='lkp-hsw-d01'
	export tbox_group='lkp-hsw-d01'
	export submit_id='63c382b2b08dd23c5adabd3f'
	export job_file='/lkp/jobs/scheduled/lkp-hsw-d01/xfstests-6HDD-btrfs-btrfs-group-02-debian-11.1-x86_64-20220510.cgz-64ea9d6c5f473c29c5de97abaa697856db90fef7-20230115-80986-1ohq29p-4.yaml'
	export id='0a1ee93b2c94906522d347d56902874c636ece1f'
	export queuer_version='/zday/lkp'
	export model='Haswell'
	export nr_node=1
	export nr_cpu=8
	export memory='8G'
	export nr_ssd_partitions=1
	export nr_hdd_partitions=6
	export hdd_partitions='/dev/disk/by-id/ata-ST4000NM0035-1V4107_ZC12HHHW-part*'
	export ssd_partitions='/dev/disk/by-id/ata-INTEL_SSDSC2BB800G4_PHWL42040015800RGN-part2'
	export swap_partitions=
	export rootfs_partition='/dev/disk/by-id/ata-INTEL_SSDSC2BB800G4_PHWL42040015800RGN-part1'
	export brand='Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz'
	export need_kconfig='BLK_DEV_SD
SCSI
{"BLOCK"=>"y"}
SATA_AHCI
SATA_AHCI_PLATFORM
ATA
{"PCI"=>"y"}
BTRFS_FS'
	export commit='64ea9d6c5f473c29c5de97abaa697856db90fef7'
	export ucode='0x28'
	export need_kconfig_hw='{"PTP_1588_CLOCK"=>"y"}
{"E1000E"=>"y"}
{"ATA_SFF"=>"y"}
{"ATA_BMDMA"=>"y"}
ATA_PIIX
DRM_I915'
	export bisect_dmesg=true
	export kconfig='x86_64-rhel-8.3-func'
	export enqueue_time='2023-01-15 12:36:02 +0800'
	export _id='63c382c7b08dd23c5adabd40'
	export _rt='/result/xfstests/6HDD-btrfs-btrfs-group-02/lkp-hsw-d01/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7'
	export user='lkp'
	export compiler='gcc-11'
	export LKP_SERVER='internal-lkp-server'
	export head_commit='06d4905363dd8ba04ff9991efaa362a882840d35'
	export base_commit='b7bfaa761d760e72a969d116517eaa12e404c262'
	export branch='ammarfaizi2-block/dhowells/linux-fs/iov-extract'
	export rootfs='debian-11.1-x86_64-20220510.cgz'
	export result_root='/result/xfstests/6HDD-btrfs-btrfs-group-02/lkp-hsw-d01/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/3'
	export scheduler_version='/lkp/lkp/src'
	export arch='x86_64'
	export max_uptime=1200
	export initrd='/osimage/debian/debian-11.1-x86_64-20220510.cgz'
	export bootloader_append='root=/dev/ram0
RESULT_ROOT=/result/xfstests/6HDD-btrfs-btrfs-group-02/lkp-hsw-d01/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/3
BOOT_IMAGE=/pkg/linux/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/vmlinuz-6.2.0-rc2-00206-g64ea9d6c5f47
branch=ammarfaizi2-block/dhowells/linux-fs/iov-extract
job=/lkp/jobs/scheduled/lkp-hsw-d01/xfstests-6HDD-btrfs-btrfs-group-02-debian-11.1-x86_64-20220510.cgz-64ea9d6c5f473c29c5de97abaa697856db90fef7-20230115-80986-1ohq29p-4.yaml
user=lkp
ARCH=x86_64
kconfig=x86_64-rhel-8.3-func
commit=64ea9d6c5f473c29c5de97abaa697856db90fef7
initcall_debug
nmi_watchdog=0
max_uptime=1200
LKP_SERVER=internal-lkp-server
nokaslr
selinux=0
debug
apic=debug
sysrq_always_enabled
rcupdate.rcu_cpu_stall_timeout=100
net.ifnames=0
printk.devkmsg=on
panic=-1
softlockup_panic=1
nmi_watchdog=panic
oops=panic
load_ramdisk=2
prompt_ramdisk=0
drbd.minor_count=8
systemd.log_level=err
ignore_loglevel
console=tty0
earlyprintk=ttyS0,115200
console=ttyS0,115200
vga=normal
rw'
	export modules_initrd='/pkg/linux/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/modules.cgz'
	export bm_initrd='/osimage/deps/debian-11.1-x86_64-20220510.cgz/run-ipconfig_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/lkp_20220513.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/rsync-rootfs_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/fs_20220526.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/xfstests_20230102.cgz,/osimage/pkg/debian-11.1-x86_64-20220510.cgz/xfstests-x86_64-fb6575e-1_20230102.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/hw_20220526.cgz'
	export ucode_initrd='/osimage/ucode/intel-ucode-20220804.cgz'
	export lkp_initrd='/osimage/user/lkp/lkp-x86_64.cgz'
	export site='lkp-wsx01'
	export LKP_CGI_PORT=80
	export LKP_CIFS_PORT=139
	export last_kernel='6.2.0-rc3-00321-gb7bfaa761d76'
	export repeat_to=6
	export stop_repeat_if_found='xfstests.btrfs.026.fail'
	export kbuild_queue_analysis=1
	export schedule_notify_address=
	export kernel='/pkg/linux/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/vmlinuz-6.2.0-rc2-00206-g64ea9d6c5f47'
	export dequeue_time='2023-01-15 12:47:20 +0800'
	export job_initrd='/lkp/jobs/scheduled/lkp-hsw-d01/xfstests-6HDD-btrfs-btrfs-group-02-debian-11.1-x86_64-20220510.cgz-64ea9d6c5f473c29c5de97abaa697856db90fef7-20230115-80986-1ohq29p-4.cgz'

	[ -n "$LKP_SRC" ] ||
	export LKP_SRC=/lkp/${user:-lkp}/src
}

run_job()
{
	echo $$ > $TMP/run-job.pid

	. $LKP_SRC/lib/http.sh
	. $LKP_SRC/lib/job.sh
	. $LKP_SRC/lib/env.sh

	export_top_env

	run_setup nr_hdd=6 $LKP_SRC/setup/disk

	run_setup fs='btrfs' $LKP_SRC/setup/fs

	run_monitor $LKP_SRC/monitors/wrapper kmsg
	run_monitor $LKP_SRC/monitors/wrapper heartbeat
	run_monitor $LKP_SRC/monitors/wrapper meminfo
	run_monitor $LKP_SRC/monitors/wrapper oom-killer
	run_monitor $LKP_SRC/monitors/plain/watchdog

	run_test test='btrfs-group-02' $LKP_SRC/tests/wrapper xfstests
}

extract_stats()
{
	export stats_part_begin=
	export stats_part_end=

	env test='btrfs-group-02' $LKP_SRC/stats/wrapper xfstests
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper meminfo

	$LKP_SRC/stats/wrapper time xfstests.time
	$LKP_SRC/stats/wrapper dmesg
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper last_state
	$LKP_SRC/stats/wrapper stderr
	$LKP_SRC/stats/wrapper time
}

"$@"

--1mmaqbJyHxvoDZp6
Content-Type: application/x-xz
Content-Disposition: attachment; filename="dmesg.xz"
Content-Transfer-Encoding: base64

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
4nVPAAG/3QKg5RCzTGMUscRn+wIAAAAABFla

--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="xfstests"

2023-01-15 04:48:53 export TEST_DIR=/fs/sda1
2023-01-15 04:48:53 export TEST_DEV=/dev/sda1
2023-01-15 04:48:53 export FSTYP=btrfs
2023-01-15 04:48:53 export SCRATCH_MNT=/fs/scratch
2023-01-15 04:48:53 mkdir /fs/scratch -p
2023-01-15 04:48:53 export SCRATCH_DEV_POOL="/dev/sda2 /dev/sda3 /dev/sda4 /dev/sda5 /dev/sda6"
2023-01-15 04:48:53 sed "s:^:btrfs/:" //lkp/benchmarks/xfstests/tests/btrfs-group-02
2023-01-15 04:48:53 ./check btrfs/020 btrfs/021 btrfs/022 btrfs/023 btrfs/024 btrfs/025 btrfs/026 btrfs/027 btrfs/028 btrfs/029
FSTYP         -- btrfs
PLATFORM      -- Linux/x86_64 lkp-hsw-d01 6.2.0-rc2-00206-g64ea9d6c5f47 #1 SMP Sat Jan 14 07:43:43 CST 2023
MKFS_OPTIONS  -- /dev/sda2
MOUNT_OPTIONS -- /dev/sda2 /fs/scratch

btrfs/020       [failed, exit status 1]
btrfs/021        14s
btrfs/022        13s
btrfs/023        7s
btrfs/024        1s
btrfs/025        2s
btrfs/026       - output mismatch (see /lkp/benchmarks/xfstests/results//btrfs/026.out.bad)
    --- tests/btrfs/026.out	2023-01-02 16:54:41.000000000 +0000
    +++ /lkp/benchmarks/xfstests/results//btrfs/026.out.bad	2023-01-15 04:49:37.182778590 +0000
    @@ -8,8 +8,8 @@
     wrote 268435456/268435456 bytes at offset 3145728
     XXX Bytes, X ops; XX:XX:XX.X (XXX YYY/sec and XXX ops/sec)
     File digests before remounting the file system:
    -647d815906324ccdf288c7681f900ec0  SCRATCH_MNT/foo
    -5876dba1217b4c2915cda86f4c67640e  SCRATCH_MNT/bar
    +2106fb59f7a6292fbb35cf2fc69f74f9  SCRATCH_MNT/foo
    +aca351b2f0529ab0cce383d7e43127d8  SCRATCH_MNT/bar
    ...
    (Run 'diff -u /lkp/benchmarks/xfstests/tests/btrfs/026.out /lkp/benchmarks/xfstests/results//btrfs/026.out.bad'  to see the entire diff)
btrfs/027        11s
btrfs/028        32s
btrfs/029        2s
Ran: btrfs/020 btrfs/021 btrfs/022 btrfs/023 btrfs/024 btrfs/025 btrfs/026 btrfs/027 btrfs/028 btrfs/029
Failures: btrfs/020 btrfs/026
Failed 2 of 10 tests


--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="job.yaml"

---

#! jobs/xfstests-btrfs.yaml
suite: xfstests
testcase: xfstests
category: functional
need_memory: 3G
disk: 6HDD
fs: btrfs
xfstests:
  test: btrfs-group-02
job_origin: xfstests-btrfs.yaml

#! queue options
queue_cmdline_keys:
- branch
- commit
queue: bisect
testbox: lkp-hsw-d01
tbox_group: lkp-hsw-d01
submit_id: 63c2c89273a339a9d7e0c7e7
job_file: "/lkp/jobs/scheduled/lkp-hsw-d01/xfstests-6HDD-btrfs-btrfs-group-02-debian-11.1-x86_64-20220510.cgz-64ea9d6c5f473c29c5de97abaa697856db90fef7-20230114-43479-1tqw6xj-0.yaml"
id: ceaed32f7626bf8785ddd2b51b236ca194899799
queuer_version: "/zday/lkp"

#! hosts/lkp-hsw-d01
model: Haswell
nr_node: 1
nr_cpu: 8
memory: 8G
nr_ssd_partitions: 1
nr_hdd_partitions: 6
hdd_partitions: "/dev/disk/by-id/ata-ST4000NM0035-1V4107_ZC12HHHW-part*"
ssd_partitions: "/dev/disk/by-id/ata-INTEL_SSDSC2BB800G4_PHWL42040015800RGN-part2"
swap_partitions:
rootfs_partition: "/dev/disk/by-id/ata-INTEL_SSDSC2BB800G4_PHWL42040015800RGN-part1"
brand: Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz

#! include/category/functional
kmsg:
heartbeat:
meminfo:

#! include/disk/nr_hdd
need_kconfig:
- BLK_DEV_SD
- SCSI
- BLOCK: y
- SATA_AHCI
- SATA_AHCI_PLATFORM
- ATA
- PCI: y
- BTRFS_FS

#! include/queue/cyclic
commit: 64ea9d6c5f473c29c5de97abaa697856db90fef7

#! include/testbox/lkp-hsw-d01
ucode: '0x28'
need_kconfig_hw:
- PTP_1588_CLOCK: y
- E1000E: y
- ATA_SFF: y
- ATA_BMDMA: y
- ATA_PIIX
- DRM_I915
bisect_dmesg: true

#! include/fs/OTHERS
kconfig: x86_64-rhel-8.3-func
enqueue_time: 2023-01-14 23:21:55.262062962 +08:00
_id: 63c2c89273a339a9d7e0c7e7
_rt: "/result/xfstests/6HDD-btrfs-btrfs-group-02/lkp-hsw-d01/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7"

#! schedule options
user: lkp
compiler: gcc-11
LKP_SERVER: internal-lkp-server
head_commit: 06d4905363dd8ba04ff9991efaa362a882840d35
base_commit: b7bfaa761d760e72a969d116517eaa12e404c262
branch: linux-devel/devel-hourly-20230112-093536
rootfs: debian-11.1-x86_64-20220510.cgz
result_root: "/result/xfstests/6HDD-btrfs-btrfs-group-02/lkp-hsw-d01/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/0"
scheduler_version: "/lkp/lkp/.src-20230111-092854"
arch: x86_64
max_uptime: 1200
initrd: "/osimage/debian/debian-11.1-x86_64-20220510.cgz"
bootloader_append:
- root=/dev/ram0
- RESULT_ROOT=/result/xfstests/6HDD-btrfs-btrfs-group-02/lkp-hsw-d01/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/0
- BOOT_IMAGE=/pkg/linux/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/vmlinuz-6.2.0-rc2-00206-g64ea9d6c5f47
- branch=linux-devel/devel-hourly-20230112-093536
- job=/lkp/jobs/scheduled/lkp-hsw-d01/xfstests-6HDD-btrfs-btrfs-group-02-debian-11.1-x86_64-20220510.cgz-64ea9d6c5f473c29c5de97abaa697856db90fef7-20230114-43479-1tqw6xj-0.yaml
- user=lkp
- ARCH=x86_64
- kconfig=x86_64-rhel-8.3-func
- commit=64ea9d6c5f473c29c5de97abaa697856db90fef7
- initcall_debug
- nmi_watchdog=0
- max_uptime=1200
- LKP_SERVER=internal-lkp-server
- nokaslr
- selinux=0
- debug
- apic=debug
- sysrq_always_enabled
- rcupdate.rcu_cpu_stall_timeout=100
- net.ifnames=0
- printk.devkmsg=on
- panic=-1
- softlockup_panic=1
- nmi_watchdog=panic
- oops=panic
- load_ramdisk=2
- prompt_ramdisk=0
- drbd.minor_count=8
- systemd.log_level=err
- ignore_loglevel
- console=tty0
- earlyprintk=ttyS0,115200
- console=ttyS0,115200
- vga=normal
- rw

#! runtime status
modules_initrd: "/pkg/linux/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/modules.cgz"
bm_initrd: "/osimage/deps/debian-11.1-x86_64-20220510.cgz/run-ipconfig_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/lkp_20220513.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/rsync-rootfs_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/fs_20220526.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/xfstests_20230102.cgz,/osimage/pkg/debian-11.1-x86_64-20220510.cgz/xfstests-x86_64-fb6575e-1_20230102.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/hw_20220526.cgz"
ucode_initrd: "/osimage/ucode/intel-ucode-20220804.cgz"
lkp_initrd: "/osimage/user/lkp/lkp-x86_64.cgz"
site: lkp-wsx01

#! /db/releases/20230113175433/lkp-src/include/site/lkp-wsx01
LKP_CGI_PORT: 80
LKP_CIFS_PORT: 139
oom-killer:
watchdog:
last_kernel: 4.20.0
schedule_notify_address:

#! user overrides
kernel: "/pkg/linux/x86_64-rhel-8.3-func/gcc-11/64ea9d6c5f473c29c5de97abaa697856db90fef7/vmlinuz-6.2.0-rc2-00206-g64ea9d6c5f47"
dequeue_time: 2023-01-14 23:38:15.343417825 +08:00

#! /cephfs/db/releases/20230113175433/lkp-src/include/site/lkp-wsx01
job_state: finished
loadavg: 2.41 1.07 0.41 1/186 10672
start_time: '1673710772'
end_time: '1673710863'
version: "/lkp/lkp/.src-20230111-092942:5b9bf8a4a:d984198af"

--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="reproduce"

dmsetup remove_all
wipefs -a --force /dev/sda1
wipefs -a --force /dev/sda2
wipefs -a --force /dev/sda3
wipefs -a --force /dev/sda4
wipefs -a --force /dev/sda5
wipefs -a --force /dev/sda6
mkfs -t btrfs /dev/sda1
mkfs -t btrfs /dev/sda5
mkfs -t btrfs /dev/sda3
mkfs -t btrfs /dev/sda2
mkfs -t btrfs /dev/sda4
mkfs -t btrfs /dev/sda6
mkdir -p /fs/sda1
mount -t btrfs /dev/sda1 /fs/sda1
mkdir -p /fs/sda2
mount -t btrfs /dev/sda2 /fs/sda2
mkdir -p /fs/sda3
mount -t btrfs /dev/sda3 /fs/sda3
mkdir -p /fs/sda4
mount -t btrfs /dev/sda4 /fs/sda4
mkdir -p /fs/sda5
mount -t btrfs /dev/sda5 /fs/sda5
mkdir -p /fs/sda6
mount -t btrfs /dev/sda6 /fs/sda6
export TEST_DIR=/fs/sda1
export TEST_DEV=/dev/sda1
export FSTYP=btrfs
export SCRATCH_MNT=/fs/scratch
mkdir /fs/scratch -p
export SCRATCH_DEV_POOL="/dev/sda2 /dev/sda3 /dev/sda4 /dev/sda5 /dev/sda6"
sed "s:^:btrfs/:" //lkp/benchmarks/xfstests/tests/btrfs-group-02
./check btrfs/020 btrfs/021 btrfs/022 btrfs/023 btrfs/024 btrfs/025 btrfs/026 btrfs/027 btrfs/028 btrfs/029

--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--1mmaqbJyHxvoDZp6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--1mmaqbJyHxvoDZp6--

