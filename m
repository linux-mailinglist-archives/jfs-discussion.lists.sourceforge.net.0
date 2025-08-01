Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CE1B1C6D6
	for <lists+jfs-discussion@lfdr.de>; Wed,  6 Aug 2025 15:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wKH8b7voWT6ac9iYsZdMqz4zcDOQmxzV5HBF6BANfu4=; b=DDRxDcT5pUqEoEMcyUpxzVqEZx
	wFL1p8W79Gh3+IK26uiiC1QabCrdY6gqHa1kEf5E1twcDQQKXSUZ5DmZVTRJOIemw6bD3o6CkKfnA
	l30u8F8/zXa6fe6vFvAUt60XjN2P3SaCTgT5t2ehtg6X8E9LDnQ2YQn13YyICe0605mk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ujeGQ-0005Cx-7J;
	Wed, 06 Aug 2025 13:33:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jgg@nvidia.com>) id 1uhtfp-0006XF-Of;
 Fri, 01 Aug 2025 17:36:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rt/M3svWgTjCDi1RQUj3qb7LyI/mcYjTVEYAqEdno7U=; b=VBMesM1jgAT2hSObyZzOPPNdk4
 B9UN81rG0BFNSNJopgRJJgjB9td2qZJVweweyvdS8LCzoPkXHVf475bd7s1fEZEIj1cbo2VTWPHlD
 GRKm+fFApTY0MI8vvN6HwSjvZpUceIy0HsLpvk7x/+7SKOnBapLZUqfX6GqtHpGJuS4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rt/M3svWgTjCDi1RQUj3qb7LyI/mcYjTVEYAqEdno7U=; b=mGSlfX8skGKLffoFxCRPx5yvka
 J9piYgDy9iOyusMtwcOosbvQjS4PNUkbo2fPAVu3uvZ806h+xqtlPNji8fr1LdWzUrzRbtzaZLASm
 OUEndXj57G4X03vFxAKMg5u9bunN/Io8tRMSls26StGvli6nXJof6susKWeUpe6JraM4=;
Received: from mail-bn8nam11on2050.outbound.protection.outlook.com
 ([40.107.236.50] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uhtfo-0001B2-Ez; Fri, 01 Aug 2025 17:36:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uvoA4bhZeEZewlWFgKNhlpxMveYbfubxb7ReJq07qlOcWuUzvTCdbRVlK/TegWOdVgR0BMqGeRCJkdscK+jGvLFK8yjoVF3VcX63otoDEm1HBUAHYYV0SQvPHWuupCEW9jtYqcd/wYvOsf2OYVusE7X4rnYJgDu7iZCpvEes0fAHhTJqmgV8bOhU4JriwqITPM/cLh41kpFPQgXxZb0VHVt8rCJnXCwyJKYAvpo2TVca2pPufrXSb5qjlkqXOW4X0at/9ycfTIwLpaZUWaCbDaI4IGUMh4y+2xVVQcGga1dlw5FyZpNLrGWl80c2RKrg+UevQYeAjXXja4bZpupNZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rt/M3svWgTjCDi1RQUj3qb7LyI/mcYjTVEYAqEdno7U=;
 b=DFwmKqIVQAfaxy2jycbo25zgkJj0nmdhN9X9fZ+IhE61s1J7/GBrGumkSVio5bhezuoSxe8hNIVvnVucHhrxJCqbgTTMySLXz3533rqAGVUnyAyiXo4KlTVoGreWrrSsctfD2KAt9ZPgyfaNt/UsvoBABI4sJWia/A45FipvRMpBXGciJ9Jd0nNAZ0gyARTS/sr44pxM3lPqWs137vzskWgHcRctA30o13NnVacCLrv9G023UbStODykWaAkW5WniMF32ydQ1VSN17kP5rS/PktR2qjtd+79zkNCvyj6DIlcxOdujsFAAJ9vk7DdLt2F79OzK5Mw8Difj19YdPUi5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rt/M3svWgTjCDi1RQUj3qb7LyI/mcYjTVEYAqEdno7U=;
 b=PSIsFgI01jAoPjZquNgONb4yDHpG2Knko8cNfxBOLSJsIHKiGgRA295ICK3zIPXHo0B4iKHnUEd/yEBobrmnAqfvhrT5ntL29zfkQLH9usVmDeUDM6ZqsEdehRVRQPguctFrIzBMLQwFMuuyZhpw38M2Wyv4lO5guZ1OGUBm0hBvGz3MrjSijFJ6bH8aBQPkCrl7jTzr6jGgm5cX6+koRdKpFUlW08PQLIqUbkEuKwvknAVbbA+tC74dcYUPUaTu1UtaYUXJWsa1hfO9fMBSf3OxUYHiRCfPXxzLAbJBGNhLSdB+x3KPxlu3JT5zr+tLvngwAKApxrfJFW8lalXQnw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by MW3PR12MB4428.namprd12.prod.outlook.com (2603:10b6:303:57::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Fri, 1 Aug
 2025 14:01:03 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%7]) with mapi id 15.20.8989.011; Fri, 1 Aug 2025
 14:01:03 +0000
Date: Fri, 1 Aug 2025 11:00:57 -0300
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Message-ID: <20250801140057.GA245321@nvidia.com>
References: <cover.1750099179.git.lorenzo.stoakes@oracle.com>
Content-Disposition: inline
In-Reply-To: <cover.1750099179.git.lorenzo.stoakes@oracle.com>
X-ClientProxiedBy: YT4PR01CA0309.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:10e::27) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|MW3PR12MB4428:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a3ddb5a-3da4-46ed-7081-08ddd103d741
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DMrOhVjU67wzqjkrBUc9l9eVXkEZ0+/D6Wi4WgYPCAHr1F6rz2zgiUeXGuhh?=
 =?us-ascii?Q?bHKesdwGP7BfkcDiwsAkH3T+w3rmp9N3ZWFC1kdLPbxSNcnYf5VUvEHnh7TE?=
 =?us-ascii?Q?9Y+TlHJI2SwPFgZOwnRL4WyLGehRyzR6bbFctvy10Kj9/zv3R4PC1wljH9A4?=
 =?us-ascii?Q?Amoup3LHIIeDnaenxPkjvF5CInxyPKEFzxjFjHdIELeiIBn5m7L1bvjz/89h?=
 =?us-ascii?Q?2RXzyAH5ryUYaMWkugJAxd2ySRK/IHHiDQ8KrCw5TzhdXOzM8Bkt7Q2HVVpn?=
 =?us-ascii?Q?qfSgPDCZzk7gx3IS5jpAP+361fQXAeWZyleKcMgWnmIihBdjDBvojpTorAe5?=
 =?us-ascii?Q?Tbg9VanIquidVZhGiTXq44dV0rz7r+gR5o1X2KrIFsqzFRPZmHLU8uD4ZNHa?=
 =?us-ascii?Q?qb4E1xRp1Xy6aqRRSQKXUgNTOCNLMUV7kyVdZRw7v4LNuY3aerl+Kw91MRto?=
 =?us-ascii?Q?d8x7Loien8+rWr7ZpKFEgG9EPQRjKzOxGEOBH3q1/ADnpChf/J/ALHpgupwr?=
 =?us-ascii?Q?gtxsDVraxhsSBMKjrOdTSavEWWh7y25IMGatW4SEkXehRobKLPw9TvBCsilK?=
 =?us-ascii?Q?y4eyWGbX0HLhH2VnzHaKgL2wQbRhmDKJyNPvtJ8jK9IFqRPEpG1JdPZekpnY?=
 =?us-ascii?Q?QXxVD3ZlCGNQT3taJKfu39kNM9n8jyAUlB61ImhfZomlkhrwMqNHXn6hJN3K?=
 =?us-ascii?Q?OP4/+VxPYRS2JMlj0GMrf01sI3B4hVFMv+2dhNfK3rRMrnqGUkVj0FHUNB96?=
 =?us-ascii?Q?YfmgxXl2tMdQFLKSjnh+B7GSQ9gAgXQaY1Xl5H3t+IEIQzLqRY8FF4sayM7I?=
 =?us-ascii?Q?2VF88TGph2/KAy0m4CPHa7oPsmsB0MnT7qeUIPc7kvGE3NKAL8xxqp2PH/Sq?=
 =?us-ascii?Q?1XRbte2/cPyhzjaJw9ZlgiH1wzkyQ1kDU/nipov2OqdF4MfXsfoS9Q4sFiJk?=
 =?us-ascii?Q?xa6L3LvG9ddLYTuUmur48iWDbh29QRLydRa4qaxk1WWI5r02+VpP2CEs0mGA?=
 =?us-ascii?Q?4/zWDfh41yW+DaBP/XPXC4wnMZ2UKdkc1ErU8oEmp41pIahv/mdJsGDhsOq9?=
 =?us-ascii?Q?WMJnQQUxpXb3/63iOV3BpHmlQoAiuh9tGBmsj1P/lTfGm7V6HtYi5+Nyo1JP?=
 =?us-ascii?Q?2qGvOEmLML/LvHuZv96Jt2j+JgCTpjfcEM5UlkmlpUukzdhblM+jvFXyS9hM?=
 =?us-ascii?Q?rQbfi1l/Z2nHJ/Z1fX0kq+k/jvKnEN3d1EW7WmvOT678/Ji4AU+qC3WWLPBT?=
 =?us-ascii?Q?Yutos8uESA3nxgmWyC/GNUOfctZcUJd/pncGWvNKuLE3C/fmk43o5gQZf25B?=
 =?us-ascii?Q?4YJ/FqKVy2Ez858FWMmysXs65pJIV0C+0kL53MQdJgYP1Iw48KsQNj47t54O?=
 =?us-ascii?Q?lFur9zLzm046YuzNzltjtGpcPPA8QoMXoNGb3+Qpg4mVjNJj0OwXCXx5vM4W?=
 =?us-ascii?Q?+RVvMnyxndk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB8659.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hMUddmTaRFMyCibocSP07+b0aOshRc7yYilKjp3lsq0fykw1laPZVO6k8zQu?=
 =?us-ascii?Q?c6t/gQfz8hbRNl3OHgEVXTh32pju69RvBLfR/qMDE0DivO8pTX5X7M243szv?=
 =?us-ascii?Q?0NX2W5X/NLHxpjI+ZkGVzA7SZduy+etTGDP3xE6ua5wWeu+g77ZjhPeEzv26?=
 =?us-ascii?Q?kQFe4bE6+CvCoqJLQHD3oyJa8rehLE24QnSt7J0HBLMt5mPo1OBmjDDTCg0w?=
 =?us-ascii?Q?T6YdCT756jetHbwwgYLoXGSnhNFAzU2qm1984hD6V5QfrrcGslkzkJ3fMBeZ?=
 =?us-ascii?Q?xOcXsrU/nuTAaxFPNGBjdhf1WQudbMkcmPDaWC3ov5qyVs7Wjptm2ZYfmnuE?=
 =?us-ascii?Q?GKpX7oAgaYMuOFV06PtuEYAINGsHroz6JxdOIZazEJ3NkuCQ5HCbb6qGAc+7?=
 =?us-ascii?Q?/uf5h+9dQcQ9LgWmStq0ZOqSfbC66S7+g4kT4mB9to/7SbjNeJdyme1lvija?=
 =?us-ascii?Q?IgJkuqhN74NBWBtH2dCZjAyR+ibySxUqXSf7jjffduu6uC97QZMY79G0nLvJ?=
 =?us-ascii?Q?/9JSPvqALPQrTOQY280DSA4XlV7rdtyPZNba7C9QZdkESSeZG8Pja9id+7BA?=
 =?us-ascii?Q?Hcm/Dqv4LcQM9S6A0Wx2tmQquVq4RSHcdPWLG4g8SvHynI53t5DvhxDM1Dd7?=
 =?us-ascii?Q?ziMu1MlBcgHjR/ArqiZfEdJYKNZZQIHF/dNn+0HXTnIxzCv+lIGVFz+HEGGE?=
 =?us-ascii?Q?gE4MGIrWBgVCO9GnPbSKFgxoXYzFJXCWOEFTVdI9wsJWrUSL+55NZqOv8Yn9?=
 =?us-ascii?Q?Dyn9V3+KSehwlKmt81uRf8X8bl71FlFTrAjxHY8SlJlKU0q+as5O1+nXYCif?=
 =?us-ascii?Q?ur4XydwYsZKJERViPy/hFYmva9zEQKu+owU4iQdJFCP5Ahw9SkV755TRvqHL?=
 =?us-ascii?Q?tmPpgWqZ45OpKHKnBKvnu4/ekzZugcjBBGDG+FXdyMeYfq4ordTBRf4LyO2e?=
 =?us-ascii?Q?0VnHgbTldQC/kdsZPQqN87yWhVJW6Ei6i27GJpUEcWRYE0ljaD40ctSR9QBs?=
 =?us-ascii?Q?n9Xdz6+Vdxsu/2LAOmH6PdxKh2kqRLP3o1tsYrluCFbt9NA/SlFmx1BYissW?=
 =?us-ascii?Q?fXrpphbLTATE/uRP09J7KXaBe6pH4ufBCY+nfLAoQGgpDXBG2hlxggI6yNZp?=
 =?us-ascii?Q?Moq/vpGehxuvG+z0XG/PjSgLuxkEXBiOIZwmwxVXqsajiqOuLqdmnsb+exlT?=
 =?us-ascii?Q?PmaQAv29yNUwOEnZlED2TnXqfcx0vFFCdLa027ivFdhSE1eIkpuLhmOs9CXC?=
 =?us-ascii?Q?TjjNWyCrqdiHR8/T1acCOyVxTpbLy4vwb4f56AGhSm6m+2KS9lACn39Uimyr?=
 =?us-ascii?Q?yP1MTkLn++HgbpLiGTKEXUi51EJlBawoxDu7teFGwVfNLFHe0bT4JWFrZJNl?=
 =?us-ascii?Q?tjz8Jz8dq/c04L7OxdP861fohdGcGPbgtZBU482FGgLgNP4lBc8B5T6QBt8H?=
 =?us-ascii?Q?EOov+HdqOKkWJlRMoqygvOsVRT0bEqDREWvDW/h1MigOEOsYvdZiT5vgpn5N?=
 =?us-ascii?Q?VIkDg9ZL8vHugqvs+2TLSY55LkvuTz7VPC56Dz9VRoXMKTX4nH4mFWESQ/Av?=
 =?us-ascii?Q?bPYSEl/ftfkJeJxkVwM=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a3ddb5a-3da4-46ed-7081-08ddd103d741
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 14:00:58.5324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v98ANgD/PTWLentAZ3Ru4Pk6xjLTn0ZKxMq/ka65h6zomjl8gbh+qcAlIi24SW3A
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4428
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 16, 2025 at 08:33:19PM +0100, Lorenzo Stoakes
 wrote: > The intent is to gradually deprecate f_op->mmap, and in that vein
 this > series coverts the majority of file systems to using
 f_op->mmap_prepare.
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: nvidia.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.50 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uhtfo-0001B2-Ez
X-Mailman-Approved-At: Wed, 06 Aug 2025 13:33:04 +0000
Subject: Re: [Jfs-discussion] [PATCH 00/10] convert the majority of file
 systems to mmap_prepare
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
From: Jason Gunthorpe via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, nvdimm@lists.linux.dev,
 Paulo Alcantara <pc@manguebit.org>, dri-devel@lists.freedesktop.org,
 ceph-devel@vger.kernel.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, Tyler Hicks <code@tyhicks.com>,
 devel@lists.orangefs.org, Shyam Prasad N <sprasad@microsoft.com>,
 Jan Harkes <jaharkes@cs.cmu.edu>, linux-um@lists.infradead.org,
 Joel Becker <jlbec@evilplan.org>, Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Zhihao Cheng <chengzhihao1@huawei.com>, Christian Brauner <brauner@kernel.org>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Trond Myklebust <trondmy@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Sandeep Dhavale <dhavale@google.com>, Simona Vetter <simona@ffwll.ch>,
 linux-cifs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 codalist@coda.cs.cmu.edu, Namjae Jeon <linkinjeon@kernel.org>,
 ecryptfs@vger.kernel.org, Yangtao Li <frank.li@vivo.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, ocfs2-devel@lists.linux.dev,
 Pedro Falcato <pfalcato@suse.de>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-block@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-f2fs-devel@lists.sourceforge.net, Hongbo Li <lihongbo22@huawei.com>,
 Anna Schumaker <anna@kernel.org>, Martin Brandenburg <martin@omnibond.com>,
 Kees Cook <kees@kernel.org>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Carlos Maiolino <cem@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 Marc Dionne <marc.dionne@auristor.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 linux-afs@lists.infradead.org, Naohiro Aota <naohiro.aota@wdc.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Matthew Wilcox <willy@infradead.org>,
 coda@cs.cmu.edu, Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>, intel-gfx@lists.freedesktop.org,
 Damien Le Moal <dlemoal@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Gao Xiang <xiang@kernel.org>,
 David Howells <dhowells@redhat.com>, linux-nfs@vger.kernel.org,
 linux-mm@kvack.org, samba-technical@lists.samba.org,
 Steve French <sfrench@samba.org>, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, linux-aio@kvack.org,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Bob Copeland <me@bobcopeland.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 David Airlie <airlied@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, Yue Hu <zbestahu@gmail.com>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 linux-bcachefs@vger.kernel.org, Jann Horn <jannh@google.com>,
 Chao Yu <chao@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 "Liam R . Howlett" <Liam.Howlett@oracle.com>, Tom Talpey <tom@talpey.com>,
 Hans de Goede <hdegoede@redhat.com>, Bharath SM <bharathsm@microsoft.com>,
 "Tigran A . Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Xiubo Li <xiubli@redhat.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>, Vlastimil Babka <vbabka@suse.cz>,
 Jens Axboe <axboe@kernel.dk>, Sungjong Seo <sj1557.seo@samsung.com>,
 v9fs@lists.linux.dev, Kent Overstreet <kent.overstreet@linux.dev>,
 linux-unionfs@vger.kernel.org, Benjamin LaHaise <bcrl@kvack.org>,
 Jeffle Xu <jefflexu@linux.alibaba.com>,
 Johannes Berg <johannes@sipsolutions.net>, Johannes Thumshirn <jth@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, linux-karma-devel@lists.sourceforge.net,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Jun 16, 2025 at 08:33:19PM +0100, Lorenzo Stoakes wrote:

> The intent is to gradually deprecate f_op->mmap, and in that vein this
> series coverts the majority of file systems to using f_op->mmap_prepare.

I saw this on lwn and just wanted to give a little bit of thought on
this topic..

It looks to me like we need some more infrastructure to convert
anything that uses remap_pfn/etc in the mmap() callback

I would like to suggest we add a vma->prepopulate() callback which is
where the remap_pfn should go. Once the VMA is finalized and fully
operational the vma_ops have the opportunity to prepopulate any PTEs.

This could then actually be locked properly so it is safe with
concurrent unmap_mapping_range() (current mmap callback is not safe)

Jason


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
