Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EB57413FF
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 16:44:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEWOv-0007BE-Mw;
	Wed, 28 Jun 2023 14:44:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tom@talpey.com>) id 1qEWOu-0007B7-80
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1+d6IuJSYns6ZYzAt9tCX+JQmfbcTC0p/2Iau9xFdl8=; b=OT/NXBnPFZ6NlETEQGM8qVy5IC
 Gp9DqJu2K1r3PJhZKcFK2sS+NNbMqqSDfhg7Dk9TbVNmdpAuCXTMHmlRFqkDJXvVcCgC6upylj8DU
 YMiPOE5XDqA/3BiXCzijt+MMD+hjs50lS6pKoOGl9QA7O/WTOzk5Wapa/xZmo/qH2zY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1+d6IuJSYns6ZYzAt9tCX+JQmfbcTC0p/2Iau9xFdl8=; b=kNYs+zU2iFw5htlfVKqF9Gi1fx
 hiblAC/JUCVubc1wAQs81JEA5U4LpP9C14jSTgGV7fwal/CmjdKGtrsf1cIm3rnsOmt/rHCbFn8Bh
 vGUfl8V8huHDvqWwKhH9I3gNNe+t4dp7zQtneBzH9e8bJWXllDKrdNN8PLugwpLWBfQc=;
Received: from mail-dm6nam10on2068.outbound.protection.outlook.com
 ([40.107.93.68] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEWOt-000FtD-A6 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:44:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jyr/FRh5XWoIcuHZJo3LdBLYagQ/FV5cX353kLuUYi6+MR5oavS/3q5YcbFxdCX0W+lBMWHkN/PysvH4Z6dOsDgt4Yjaws4XeAr7naGLNXR5w+8ko8YCpqDMDHZ4VcOaw/Mb7BPw6jgnl2D8cSd4LBrZz7vC9ZMAJvmF+kEzwpc9sJT6B3BZ+R7k8WQ1JTZpVyYL621a2mDqhWrkGzunCWtyXohuyfoi1jXW7Z/IrSrJR04LBvlJO9swnooq7Vz0N+CCMPvZPseDL+nQ9hP4gfa27AH4iU0M52TSkt97nhG58Mf2Xj5At5jmBwfPtP+Eb9bc7GYybvZlzYS1FNK+Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1+d6IuJSYns6ZYzAt9tCX+JQmfbcTC0p/2Iau9xFdl8=;
 b=WMP11unfgSrVuYXSw9QU8JWMBOYDalbsch1BRbQlzpF2qOs1UJFDmGCxqrT85HETe/CUyQnJUckF6uGD9pvEJzPG5Kk3bn9thAZ+sY/fIATZjZsTwnL6TvLSR3MTk6aedOcrHGVUcSHFXAvUDXZKodmym9Vp2WXOirpe5aOdA16EqYW+u5FLem1dpEZg/kb2UQYunTTolcaSza1O42C9IkUk6osxzG1bi1ABj/E/GSjsTRDiCRfC5vrxbxX+4KZ88/WJQzkYDZNqKDT/wvo5uSnNcWOaTtY+pyZnfqYdhjNjf0nWQSuTA3norU/W8Thi1Y0pC+Q9oP4qEKfmwVXIlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=talpey.com; dmarc=pass action=none header.from=talpey.com;
 dkim=pass header.d=talpey.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=talpey.com;
Received: from SN6PR01MB4445.prod.exchangelabs.com (2603:10b6:805:e2::33) by
 PH0PR01MB8094.prod.exchangelabs.com (2603:10b6:510:298::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.23; Wed, 28 Jun 2023 14:11:23 +0000
Received: from SN6PR01MB4445.prod.exchangelabs.com
 ([fe80::17e9:7e30:6603:23bc]) by SN6PR01MB4445.prod.exchangelabs.com
 ([fe80::17e9:7e30:6603:23bc%5]) with mapi id 15.20.6521.023; Wed, 28 Jun 2023
 14:11:23 +0000
Message-ID: <92ae722f-c09b-120f-bc30-7452e87f5374@talpey.com>
Date: Wed, 28 Jun 2023 10:11:21 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Dave Kleikamp <dave.kleikamp@oracle.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>
References: <20230628011439.159678-1-linux@treblig.org>
 <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
 <ZJw4iLlFWRMq6a3S@gallifrey> <ZJw50e0pvn/IN5Gj@gallifrey>
 <90f35697-5941-d42d-b600-245454cbd040@oracle.com>
From: Tom Talpey <tom@talpey.com>
In-Reply-To: <90f35697-5941-d42d-b600-245454cbd040@oracle.com>
X-ClientProxiedBy: MN2PR19CA0007.namprd19.prod.outlook.com
 (2603:10b6:208:178::20) To SN6PR01MB4445.prod.exchangelabs.com
 (2603:10b6:805:e2::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR01MB4445:EE_|PH0PR01MB8094:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f1b8c8e-e4b2-40b6-4b28-08db77e18da8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dWl9NtrYRXFSRCmEG5zYgI3qOGewUxY/8j3KpMvd+sMapkO3P8+ZLeHSJtLsjqB2S5YGturr0FGGdKY9A0H7qDu/Ng+tY1INtDAMY1f0bNzUTJyUtd+5eNc3fmFc0zGMNb/8T+e2GtnaOd0KztaAGLRQlUfqYeKK5DJYGmZjw92zBnukyF5iIzxaE9P6OgTos9a56DThUH9VjqiacEHOYZr27LgdRhydh5aNT7psLvYZEEbKy+RZkcZqXheGK55ThXw+M0sQLyDCYzG8xlt2jY7E8N605xRfmu8ej28X78pOLjTCMrwwswEfDH3NWDIpS0SwwWKKIaGSZ+kCeqY8OkoVcUvDWsALOglqnS5691FDoaTp3PGUlzHsQ5Wx5geP2xeP2+1LMNpyoEFUdgcujbHzkkCyEvth2DkWH3tzg8ikgvvPPKtET397gE2ZrAZ5SXjQf74Fi4Z0HCgCD2gX0kjy5zngn6cR5oq63rkkpPKdXd+BaHdA2jCFvPBnnSlYvvhoKL0eF2GOu8SwIGpihe03HcGcsTbLGtNxXSutMjpCfmUS51ZuGc/GiuqNkCAXLJ//ZuKEJUUfAX1NhkWL6W7zJxfKPQrRaMFWI8V7YHRsY3I+a8Rw+KOoO5KzBCkj9TQMrsGwGzlYJQ1NsWXaHw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR01MB4445.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230028)(39830400003)(346002)(376002)(396003)(366004)(136003)(451199021)(31686004)(966005)(110136005)(478600001)(6486002)(52116002)(83380400001)(2616005)(86362001)(31696002)(66476007)(66556008)(6506007)(53546011)(26005)(186003)(2906002)(6512007)(66946007)(4326008)(36756003)(8936002)(41300700001)(38100700002)(38350700002)(316002)(8676002)(5660300002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWMrcHQxb3M2cEUrekVOMmZkd01Pa0lsc1VUSytqL3NEZmpCbXBieWR3cXdp?=
 =?utf-8?B?elpaUDBNc0xYWTI3S04wcUltaHpSNS9SZTV5bG81eGt1L3dQWnJNSXF4WGpr?=
 =?utf-8?B?bWFDaWxxVlB0N3JxTjBQVExkdHVWOTNYcUk1RjZEM05PMS9YZ0dObmVla3Zm?=
 =?utf-8?B?NEpnMXJ0MCtLYUI5MlphalhVKzk0N3d6aVVJT204RmU5UVdqQzhpVGwwbUxV?=
 =?utf-8?B?akRDbTVzczl5TVQzblY2U21tY004TENmMzN4Y3k4NW9Idy9OMU9aakkvYVhC?=
 =?utf-8?B?dTZFUkMvQXh2eUVIZnBLR2VidUgwWDF6T0M4T1VHUTVPdDJCeHpSSEtya0l0?=
 =?utf-8?B?SnJmZkx4dHRHM1VKdzhkWHhOVThucFJhdHNLN2RqQnZNeU1QNDZmcTJJUkdE?=
 =?utf-8?B?NVNtVldIV3o2RzFEZkxPQithMGRzR01ReGZBcm11dndJSWZ5Z2hzSEhVMzBa?=
 =?utf-8?B?VFZvYi9oQkU1Tmc3NjhJeHNhdmNBenczRGdxZlFKK2s0SnMzeFpzUnV4UlI0?=
 =?utf-8?B?Umpsbmc5NzRzR3FQSk5UNE50RUh6V3JFdldtUk03SzZBN210aW5CTXU1Rm1i?=
 =?utf-8?B?bDYrNXk2QTB4RUxpMVl6VU0xZGVLS2hRLzFUaWpES01SQ2FsWTBaL2JQUGVU?=
 =?utf-8?B?eG1EaXNWVW94YndSV1hGNVlqdUg4VDRObmVycjJXVDM4VXpIc080TGYxZ1Jo?=
 =?utf-8?B?bm5DUFJGYnR4VEFCRUczSWcvRzBqYVZkQWxMUEgzcTFGc1RZMGhjbll5dzRL?=
 =?utf-8?B?TlBsbElTdG9aU3RuTFhvMzRMc0g5Tk9YMTFyQThyU0hvbGg3TzBFeHk4ZGdH?=
 =?utf-8?B?cU14ZHhCd3k5Y2VlNHhyem1TS1RhNXdlcnZYWDlHamkyRnB6T3VpUm91YkZQ?=
 =?utf-8?B?T25jRjM3MnpHcURuL1RsZzAxZjViRnBPN0s0ai9BNmJGbGFSRzhDaG8xYW9F?=
 =?utf-8?B?WWlGOURodkt5MFFhWFhDZmZQNndZSXNlSmZrNW1GcGRGcDYveFJzMzNTNzNk?=
 =?utf-8?B?M0ZRaEdWb3BDRlZwOWV3NnNaVVlRNWFPSWpIK0xocHBRaFZ0Vkp2Z1U4em4r?=
 =?utf-8?B?K3dRRnNUN21YS2hhTWRSZUdJWGlsZm9hdmlhRGdxYzlBNEdaMVpQeTh5TnM4?=
 =?utf-8?B?djBoMVBEcEhCdjFlbTBBUTc2TEpScllIYnZMZTJDeWNYTFBtMjVpSndNNkVR?=
 =?utf-8?B?VjRMZ0ZUSlJ5c2FkZE44eDRhbERDYkJVQTdJZm5ZNlpKWllFN2wvemJONWhj?=
 =?utf-8?B?OFFmQmFBY3BHenZ3dkFCWURaaUhOS3JLdHczSXRkMWVXdGx2RFdqOVIrQ2FL?=
 =?utf-8?B?dEw5ZzBtdnBoREd4dStCNU5JZWVRU1dRUmpuK3JlRWhrNmpqdDE0TXRNVWha?=
 =?utf-8?B?Y1VJc0JEbkRMZ2hZOXNybkNzTlJzQ3B0b0NLN09nODdQcWVlNW83aEQ0Snk0?=
 =?utf-8?B?bGhOYzJTMXFaZjlKU2ZmNVFmM2wrR2tIN2hIcDVOalg4UUVtTlVPeXVqVFBM?=
 =?utf-8?B?ZFpxYUl4MFp0K05YRFNLZktncXFLYjczUXNsZnR0YnFhZkdUNFljZHNjNWpN?=
 =?utf-8?B?bFE2K2RRdDFNN09XR2UvYTEwVTNiMnl1N0gwYW5IeS9LcExMNHh2U240c0hx?=
 =?utf-8?B?Uy80UUk5YWNNTm5WOC9HNTNKNzF5Q0tOak94c3lWcHpFL0NDNlhpMEJacS9F?=
 =?utf-8?B?RHdEZUtKZVNBZG9ZRTRPK2NDMm1hUGxNYmM3RkRTWExZWkJTbVlXYVVsdlgr?=
 =?utf-8?B?Q3NvYWpHNUozUlZYSmUxemRMYnZqNnMvMkN2NFRDaCtHTjlub2FDMzNrR1My?=
 =?utf-8?B?L2wwK3VPSTVxcVhLUU1mVTRTU3RRazdOam9GNW4ySjhIVnRFM0VMVjVkUklL?=
 =?utf-8?B?eTM4RmF2T0JkcFJnOCs0QnpxQmxFc0ZGUUh2M3I1YmxGUUlEVkMxUThMcHBh?=
 =?utf-8?B?aWRHemtnUlRUN0xDemhldXNOYktUUm1wUGNzdmFiNTFad25lRVpaelkydzVE?=
 =?utf-8?B?NTcvN3Nnb1RWMGZZaitsdHM3TUlLWjNzOFZqQ08zZHc1WkxiTTdjMC9WT0xU?=
 =?utf-8?B?eFZqSWo0RlU5ZGxNclpsOEpwNTFDRmVlaUlzdjFxSVMxZ0tlSUxsTHpJbmNS?=
 =?utf-8?Q?9cSj4RBgRXQ1ozHjhEpFAmsSl?=
X-OriginatorOrg: talpey.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f1b8c8e-e4b2-40b6-4b28-08db77e18da8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR01MB4445.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2023 14:11:23.2304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2b2dcae7-2555-4add-bc80-48756da031d5
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ahi7koXc57h8+LG5669afjmq6CNxzcStEWwZ039fD8Qb6zt1xfRj0UiRg9bAmH5s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR01MB8094
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/28/2023 10:02 AM,
 Dave Kleikamp wrote: > On 6/28/23 8:46AM, 
 Dr. David Alan Gilbert wrote: >> * Dr. David Alan Gilbert (dave@treblig.org)
 wrote: >>> * Tom Talpey (tom@talpey.com) wrote: >>>> On 6/ [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.68 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qEWOt-000FtD-A6
Subject: Re: [Jfs-discussion] [PATCH 0/3] dedupe smb unicode files
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
Cc: sfrench@samba.org, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, linkinjeon@kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNi8yOC8yMDIzIDEwOjAyIEFNLCBEYXZlIEtsZWlrYW1wIHdyb3RlOgo+IE9uIDYvMjgvMjMg
ODo0NkFNLCBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0IHdyb3RlOgo+PiAqIERyLiBEYXZpZCBBbGFu
IEdpbGJlcnQgKGRhdmVAdHJlYmxpZy5vcmcpIHdyb3RlOgo+Pj4gKiBUb20gVGFscGV5ICh0b21A
dGFscGV5LmNvbSkgd3JvdGU6Cj4+Pj4gT24gNi8yNy8yMDIzIDk6MTQgUE0sIGxpbnV4QHRyZWJs
aWcub3JnIHdyb3RlOgo+Pj4+PiBGcm9tOiAiRHIuIERhdmlkIEFsYW4gR2lsYmVydCIgPGxpbnV4
QHRyZWJsaWcub3JnPgo+Pj4+Pgo+Pj4+PiBUaGUgc21iIGNsaWVudCBhbmQgc2VydmVyIGNvZGUg
aGF2ZSAobW9zdGx5KSBkdXBsaWNhdGVkIGNvZGUKPj4+Pj4gZm9yIHVuaWNvZGUgbWFuaXB1bGF0
aW9uLCBpbiBwYXJ0aWN1bGFyIHVwcGVyIGNhc2UgaGFuZGxpbmcuCj4+Pj4+Cj4+Pj4+IEZsYXR0
ZW4gdGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4KPj4+Pj4KPj4+Pj4gVGhlcmUncyBzb21lIGNv
ZGUgdGhhdCdzIHNsaWdodGx5IGRpZmZlcmVudCBiZXR3ZWVuIHRoZSB0d28sIGFuZAo+Pj4+PiBJ
J3ZlIG5vdCBhdHRlbXB0ZWQgdG8gc2hhcmUgdGhhdCAtIHRoaXMgc2hvdWxkIGJlIHN0cmljdGx5
IGEgbm8KPj4+Pj4gYmVoYXZpb3VyIGNoYW5nZSBzZXQuCj4+Pj4+Cj4+Pj4+IEknZCBsb3ZlIHRv
IGFsc28gYm9pbCBvdXQgdGhlIHNhbWUgY29kZSBmcm9tIGZzL2pmcy8gLSBidXQgdGhhdCdzCj4+
Pj4+IGEgdGhvdWdodCBmb3IgYW5vdGhlciB0aW1lIChhbmQgaGFyZGVyIHNpbmNlIHRoZXJlJ3Mg
bm8gZ29vZCB0ZXN0Cj4+Pj4+IGZvciBpdCkuCj4+Pj4+Cj4+Pj4+IExpZ2h0bHkgdGVzdGVkIHdp
dGggYSBtb2R1bGUgYW5kIGEgbW9ub2xpdGhpYyBidWlsZCwgYW5kIGp1c3QgbW91bnRpbmcKPj4+
Pj4gaXRzZWxmLgo+Pj4+Pgo+Pj4+PiBUaGlzIGR1cGUgd2FzIGZvdW5kIHVzaW5nIFBNRDoKPj4+
Pj4gwqDCoMKgIGh0dHBzOi8vcG1kLmdpdGh1Yi5pby9wbWQvcG1kX3VzZXJkb2NzX2NwZC5odG1s
Cj4+Pj4+Cj4+Pj4+IERhdmUKPj4+Pj4KPj4+Pj4gRHIuIERhdmlkIEFsYW4gR2lsYmVydCAoMyk6
Cj4+Pj4+IMKgwqDCoCBmcy9zbWI6IFJlbW92ZSB1bmljb2RlICdsb3dlcicgdGFibGVzCj4+Pj4+
IMKgwqDCoCBmcy9zbWI6IFN3aW5nIHVuaWNvZGUgY29tbW9uIGNvZGUgZnJvbSBzZXJ2ZXItPmNv
bW1vbgo+Pj4+PiDCoMKgwqAgZnMvc21iL2NsaWVudDogVXNlIGNvbW1vbiBjb2RlIGluIGNsaWVu
dAo+Pj4+Pgo+Pj4+PiDCoMKgIGZzL3NtYi9jbGllbnQvY2lmc191bmljb2RlLmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgLQo+Pj4+PiDCoMKgIGZzL3NtYi9jbGll
bnQvY2lmc191bmljb2RlLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMzEz
IAo+Pj4+PiArLS0tLS0tLS0tLS0tLS0tLS0KPj4+Pj4gwqDCoCBmcy9zbWIvY2xpZW50L2NpZnNf
dW5pdXByLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyMzkgLS0tLS0t
LS0tLS0tLQo+Pj4+PiDCoMKgIGZzL3NtYi9jb21tb24vTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+Pj4+PiDCoMKgIC4uLi91
bml1cHIuaCA9PiBjb21tb24vY2lmc191bmljb2RlX2NvbW1vbi5jfSB8IDE1NiArLS0tLS0tLS0K
Pj4+Pj4gwqDCoCBmcy9zbWIvY29tbW9uL2NpZnNfdW5pY29kZV9jb21tb24uaMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHwgMjc5IAo+Pj4+PiArKysrKysrKysrKysrKysrCj4+Pj4KPj4+PiBTbyBmYXIg
c28gZ29vZCwgYnV0IHBsZWFzZSBkcm9wIHRoZSAiY2lmc18iIHByZWZpeCBmcm9tIHRoaXMgbmV3
IGZpbGUncwo+Pj4+IG5hbWUsIHNpbmNlIGl0cyBjb250ZW50cyBhcHBseSB0byBsYXRlciBzbWIg
ZGlhbGVjdHMgYXMgd2VsbC4KPj4+Cj4+PiBTdXJlLgo+Pgo+PiBBY3R1YWxseSwgd291bGQgeW91
IGJlIG9rIHdpdGggc21iX3VuaWNvZGVfY29tbW9uID/CoCBUaGUgcmVhc29uIGlzIHRoYXQKPj4g
eW91IGVuZCB1cCB3aXRoIGEgbW9kdWxlIG5hbWVkIHVuaWNvZGVfY29tbW9uwqAgdGhhdCBzb3Vu
ZHMgdG9vIGdlbmVyaWMuCj4gCj4gSSdkIHN1Z2dlc3QgbWFrZSBpdCBnZW5lcmljIGFuZCBtb3Zl
IGl0IHRvIGZzL25scy8uIEknZCBydW4gaXQgYnkgdGhlIAo+IG5scyBtYWludGFpbmVycywgYnV0
IEkgZG9uJ3QgdGhpbmsgdGhlcmUgYXJlIGFueS4KCkkgYWdyZWUgdGhhdCB3b3VsZCBiZSBiZXN0
LiBJZiBpdCBzdGF5cyBpbiBzbWIvY29tbW9uLCB3aXRoIG9yCndpdGhvdXQgZXh0cmEgZmlsZW5h
bWUgZGVjb3JhdGlvbiwgaXQgd2lsbCBzdGlsbCBuZWVkIHRvIG1vdmUKc29tZWRheS4gQnV0IEkg
aGF2ZSBubyBzdHJvbmcgcHJlZmVyZW5jZSBvbiBwcmVmaXggYXBhcnQgZnJvbQpub3QgY29uc3Ry
YWluaW5nIGl0IHRvIGEgc2luZ2xlIHByb3RvY29sIGRpYWxlY3QuCgpUb20uCgo+IFNoYWdneQo+
IAo+Pgo+PiBEYXZlCj4+Cj4+PiBEYXZlCj4+Pgo+Pj4+IFRvbS4KPj4+Pgo+Pj4+PiDCoMKgIGZz
L3NtYi9zZXJ2ZXIvdW5pY29kZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqAgMSAtCj4+Pj4+IMKgwqAgZnMvc21iL3NlcnZlci91bmljb2RlLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDMwMSAKPj4+Pj4gKy0t
LS0tLS0tLS0tLS0tLS0KPj4+Pj4gwqDCoCA4IGZpbGVzIGNoYW5nZWQsIDI5OCBpbnNlcnRpb25z
KCspLCA5OTMgZGVsZXRpb25zKC0pCj4+Pj4+IMKgwqAgZGVsZXRlIG1vZGUgMTAwNjQ0IGZzL3Nt
Yi9jbGllbnQvY2lmc191bml1cHIuaAo+Pj4+PiDCoMKgIHJlbmFtZSBmcy9zbWIve3NlcnZlci91
bml1cHIuaCA9PiBjb21tb24vY2lmc191bmljb2RlX2NvbW1vbi5jfSAKPj4+Pj4gKDUwJSkKPj4+
Pj4gwqDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvc21iL2NvbW1vbi9jaWZzX3VuaWNvZGVfY29t
bW9uLmgKPj4+Pj4KPj4+IC0tIAo+Pj4gwqAgLS0tLS1PcGVuIHVwIHlvdXIgZXllcywgb3BlbiB1
cCB5b3VyIG1pbmQsIG9wZW4gdXAgeW91ciBjb2RlIC0tLS0tLS0KPj4+IC8gRHIuIERhdmlkIEFs
YW4gR2lsYmVydMKgwqDCoCB8wqDCoMKgwqDCoMKgIFJ1bm5pbmcgR05VL0xpbnV4wqDCoMKgwqDC
oMKgIHwgSGFwcHnCoCBcCj4+PiBcwqDCoMKgwqDCoMKgwqAgZGF2ZSBAIHRyZWJsaWcub3JnIHzC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCBJbiBIZXggLwo+Pj4gwqAgXCBfX19fX19fX19fX19fX19fX19fX19fX19ffF9fX19fIGh0
dHA6Ly93d3cudHJlYmxpZy5vcmfCoMKgIHxfX19fX19fLwo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
