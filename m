Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADECE3B1C47
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Jun 2021 16:19:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lw3j8-0001on-VM; Wed, 23 Jun 2021 14:19:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lw3j6-0001oe-Ar
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 14:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tWK4teh2j7R5wTz/syKQ6rX0Bx4Y2RPLmmrmOT0rr6Q=; b=dubdKq6LTgppHXggmcFmkjhkX3
 PLLRdQJuP4BnOiVqkcfQ2y7rBHODUNPQDB0sUUbBtLv6HN2FD8g6jPrVj92xB7Y1YHrqwANJfDnOb
 b8CqgxWk3kP+wpzDgUSoZYBl6kYdD+lPxnH5WJfYPAMIO+sf7AZLo7Cnw9dHlxHNRXFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tWK4teh2j7R5wTz/syKQ6rX0Bx4Y2RPLmmrmOT0rr6Q=; b=Awa5wKZMXps0kMi5uE2OwAvI/q
 Yh9Sx1vDTcf67wop8O46WG7xfEdRQxFcC2N/ELLgkLnn8F4YGoWMQXjFU9aE38VYdvcX75OWMeX+i
 VnkUHlR2yL1REbTZGuVuRqthfItw70HMYV7JYS+8GlW87cRe8ptl/Alxji2imfQIrEeM=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lw3j0-009IKz-2H
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 14:19:38 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15NEBgmY023792; Wed, 23 Jun 2021 14:19:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=tWK4teh2j7R5wTz/syKQ6rX0Bx4Y2RPLmmrmOT0rr6Q=;
 b=pT6lkJGmHTJ+r+Cw0ZbgJkfSpPsigVn2vD6I5Xx9LlcO07j0tPog5SzZ5Z05RLx2V2gL
 oskyUUCcAfynujz/gFRWuFmdN+/YORtqnFOElk5Wr4DkWsHd2dRc+aGvMm/eLX1SnTui
 soUJnxPAKQgjZdB8NILHI7Z9VAVT+ij9iU/hW4EW8MYBbVsGWYg8lgkqz2cOyFjkzbug
 iV4PgFvq/oN8iAm/st8usyeIEeMYWy5ZO6k60zxcID2P3EZXBtDC8aEGCAA7cuoDfpJF
 TT4Rza00kGisOzdlRrR1ocEjF2gH32baUqT2lolC8PWWD/Sy0Rw2HjO123yguPBi9Qzu PA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 39ap66p333-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 14:19:17 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 15NEBUEr011647;
 Wed, 23 Jun 2021 14:19:16 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
 by aserp3020.oracle.com with ESMTP id 3998d9659a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 14:19:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LT26hQKHjL8fmZaRutx+MFxetCUI7CcS89ZG6RIheqkwgoMHMT3GDTLHoUKywQFYxafDkBZyFHu/soIITX9CZIFYFs/YPb3v5H9DydNLuKT1Cj+8swvB20nS+wfSURbvK5aFMdsXsZ/HamMLTwiweOW4NDDF8KYU3Cu8Pe7Ms+foiNyFQaFMYiZvWRUoPdSknZ2HQnbRoyYmDpDRQk5vBUOfl0E0AvmxJxD85te0kRqlNzlJzLnT4rGe67DR39cjDsrsxn5gT42BjOeFsQszbwO6rtKQBl8YUcTHSk4Dtg8gAH+8GudlClW0QZS8lACZBNf2V+v8306s+Bh3qrzlpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tWK4teh2j7R5wTz/syKQ6rX0Bx4Y2RPLmmrmOT0rr6Q=;
 b=V07oZRpvOBTwtEZQ0V9W+qizN+lQ43OWiDK04LMfBlxe2ibSXEsBrvFd65RgsqbHhxyIL8oGYc/8mO9ZyShrVLrI2ofdHAg3megB7Mfa9EnGiNIX+ZysbvyodLB4/qMYHSZuwknTqe7H7iwlwOPM3B58OEgkFfBZ7JITTd2N/yIpSoC1ghosmr9X7gGf6ljvSYgZIgM6ZXrZ8BeIQEWVzmq8pbiXgTGoX1VIv6AqFF24KS47SEsp9KyPN5EpIcT5AlaDOdQrh+3LCBHmdsEjNx3pBDeRlOqg1nV4NEKVcSsqgWv0YaU5wgHjqOnXm2uD7CtYm/YIoLHym2iFttS/Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tWK4teh2j7R5wTz/syKQ6rX0Bx4Y2RPLmmrmOT0rr6Q=;
 b=R4YWRR5DRWuE8Mxq/sjE8+Xjjl98uf0OzLkyjZzO9ft3L91EgWnJuNwW786Q+owPq61+vPNMs/6qQK+XscwhTm9Lm4mmnWrv7Ed1P00J14ajxlqwmCKbMujJwUQQIouYq8FWEzp8pzSY3ZaI56BKSz41txLFDU9RB5nuRBYttvs=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=oracle.com;
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH0PR10MB5130.namprd10.prod.outlook.com (2603:10b6:610:cb::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19; Wed, 23 Jun
 2021 14:19:15 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca%2]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 14:19:15 +0000
To: Zhen Lei <thunder.leizhen@huawei.com>,
 jfs-discussion <jfs-discussion@lists.sourceforge.net>
References: <20210617090238.1438-1-thunder.leizhen@huawei.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <e88803bd-f140-a8cd-a484-a5c3d16d469e@oracle.com>
Date: Wed, 23 Jun 2021 09:19:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210617090238.1438-1-thunder.leizhen@huawei.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SN7PR04CA0222.namprd04.prod.outlook.com
 (2603:10b6:806:127::17) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN7PR04CA0222.namprd04.prod.outlook.com (2603:10b6:806:127::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend
 Transport; Wed, 23 Jun 2021 14:19:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33b9ac85-eb62-4d40-58d4-08d93651e16f
X-MS-TrafficTypeDiagnostic: CH0PR10MB5130:
X-Microsoft-Antispam-PRVS: <CH0PR10MB513099C159F2202D6694CB9C87089@CH0PR10MB5130.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AM4Gox4EFP0rmYgS/DfKIfV6RuiB0QKyCB6JHZVx1JQhWARAYRB3KlYy9N86XoPsQJ0Eu4aITi1HaMYVjnffn7tcRSehBRad4XwJ5xvRTfI8U/s1EDq2VjUEWFhaNOr0Im4Dc+UHulUV6Na4/T0uaHUh5wqviKPphlNyWGPc4htkzw0FfUPRS+gC9EuMy4/wvT5QDDaIAiqzEnbsfGtiOJTRjg9wyiiYSVTBLwrawk6XttL0NX4vxgSMLeAYhcpyhKnXF+SOr01cHX5HDsLWo3bzxRqbMpZ2+O6PCqk/HH3xXxOqmkvwN8WpRwDAdxTyZx0I5dn9ZqKRwg9ZVj2r+BkJruESFIl+k6qCZfgNJppl6D+wk7NfoE0TBXtR802nssgrmFRiyhKG++AaZIbKch0ZtXKqqxRJS1NiNimDbXgZ5ubcBsuXBON3Qhm9lotZ+Xx+WG8dB+cvcBwJQDjUxlaRNrTsnZkHpi+X88bgHlZwBG6fpkxnipo9CLw46nBkK0Ds4EvuHH6toje+44pWZvVNOsakLOadX+kWoVwqIzuuuSC05ypxH6ujdvkh/XQ+g60b75e2lEHnne4YqKGL84z13ZQpiTmCkhkXdxNbFD/w4EnzmqGC6FJZOlgIje90+EbtfUsbuGQIJEqlq3tS7/LlL9/DNv7djmj++9lWTfzRd90xjCQwgLspwF8/LxCv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(346002)(396003)(376002)(366004)(66476007)(66556008)(26005)(66946007)(2906002)(186003)(16526019)(53546011)(8936002)(478600001)(6486002)(38100700002)(83380400001)(15650500001)(110136005)(31686004)(86362001)(956004)(31696002)(4744005)(2616005)(36756003)(5660300002)(44832011)(16576012)(316002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vkh0ZHJCaG9ZQ3NZZFg3NnlpYVNBNnVsbnlVQlhsdzY1SFdFWjR4TlR2S3Y3?=
 =?utf-8?B?TElFK3lGNUZxOVM0ZUV1MHRXeWowNndsOUFtT21TYkdta051bmNIUjNVeUNw?=
 =?utf-8?B?MXdueVRNbjNLVlFBWUlQTGc4dENYMDVSSWlBaGErWm5sYkNNa3V6WjE1ZU1u?=
 =?utf-8?B?WTFuSHNRUW9YZ0hqMXZDV2JKVkRXUDZOdzlRVmtpbml0a0R4TS81Nkd6alZy?=
 =?utf-8?B?RTAyOXdOalY5cFoxYUFCRVk2U2krSTdMQ1l3dDdGSnFRNHlmNEJSWWxLQTFF?=
 =?utf-8?B?bUlMdnVQd3pzb3JzU1dmbWQyRjlmeHRaWHBSZTJpRWg5TDZGcXZxdlFxREJK?=
 =?utf-8?B?V1hqUlU4Q0p6Zk5KdjE1NmxvWGdWNU41NGl0Mmc2RGs2bkk2ajFMSDBiVjlu?=
 =?utf-8?B?Zm9pMk1hMWZmN2s5em41Q3ZvcFV6YjdzbjM3a0UrSGsvWjd6VzZmM21heDFq?=
 =?utf-8?B?Yy9RT2dnMzh1Mk1BZGJ1VzNzSE54VkVwUlp0aDdoRmY2SWdJcnBLTjFkNmxC?=
 =?utf-8?B?azdJekg1Z3FpVVRXejZNWDFEVTM0alovanpkSytPREJzakYvQ3FKTW9vWHBN?=
 =?utf-8?B?OVdQSjcvZlhPUi9pcHIyOE5vMndseWFrVVJBdmdtUUJpdkYxZ3hYTkk4MDZr?=
 =?utf-8?B?TUlRQlE1TjB2aVlHVGtVNkRleFJYZzlvcElROGRUaFpVdi8ybHZVL3JnZ2tN?=
 =?utf-8?B?R3c4UjhvMUV4WkZEc2lwSDNGRUJUb1Z5eUVaOUhzdEsxeU0wT1I4eFB2eTBr?=
 =?utf-8?B?OUZBbTNQL3Vac1VkZHNGWGQ4L0E2bERibmhxTDUvamVHVms2dzl2TG9GbE9r?=
 =?utf-8?B?SVdDaUN6TWhwSFRhNmRKUCtnNnlrRm42OUhJMXNEQkhUNklTSUpENkp2cXAy?=
 =?utf-8?B?NXdYc0JvcDZFcUhCQnd3NzlsaXNTUHBkYzBpeUFGcGYwSnROVXp2aG9pajJN?=
 =?utf-8?B?dk5HcVlCSEhvelRmenowb05lMVNpYjVSbE4vSGlTaDg3NzVwOG14RkRzQjUw?=
 =?utf-8?B?WU42aWpycHNBclZpSmJ0QTlwVk9Sdlc2bTYrTWY4OW1zYkIxazRVRGkyRTd2?=
 =?utf-8?B?SG5Jb3RqK1BRakNQQ1hkTTlJUys0aHFVWDNyVERPRFpyZmdsQzJMV0YvSzRM?=
 =?utf-8?B?ZS9malpJdnpBU3Nyakpkd0NXbVZsYy9NQ05Rb20xZUtCeDM1d1F3OWVGWUEy?=
 =?utf-8?B?Z2h6aXNaTW1JSUwzVjV1bk0vTXJ4Q2JwQnUybFFYcUUrNkIzbDIzTFRPQ0hj?=
 =?utf-8?B?SXdSTmdrZGpJNFgzNEJrTkNreXhhMGl3WU1GamtpZ3E1NllXSnlmTlJkQ25G?=
 =?utf-8?B?V0c3bzVsRTk0a0RxS2tRaXJxUkthTHdtVFRzd3FYK29hQ0Y1T2dTLy9GMHIw?=
 =?utf-8?B?eGZEUk1WSEpRRUZUYStJdzhBUTkrZGxiQm4zbDRCR3ArTkZaK1phajYrbW0x?=
 =?utf-8?B?U1diTk1uQzVOOEhzY0FUTzVabWh4SWw3VUFUUmgzMnp6ekNZZTVXUElmRFEy?=
 =?utf-8?B?K3diK2tiQitNSm1tOHhCbGRWSHIvUElmbXJocjhmWkZReVNXRjJ3elZrdWpx?=
 =?utf-8?B?Q3ozY2xsaFlTcDAzN21BKzNwL2Q3Tk5GSGMwQlFOUTdTZzk5NmJvVFBCM0lU?=
 =?utf-8?B?ZnBHMEw0WWZWUTF5YmIvcHRyUjYwK05yUXpXdCtZbWttYzNuK2k5eUN5Nk9Q?=
 =?utf-8?B?VXhpVlRJc3Y5TDJEbW5XVmhtcTIxdkJuWkZocW1NUzFEdXlvQkhoMm1oR0g0?=
 =?utf-8?Q?9V2RCHmZbKIl7eXzf1tB//ED1x0llUWHF/0HSz+?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33b9ac85-eb62-4d40-58d4-08d93651e16f
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 14:19:15.3302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tc9I3S1cxcgvZKBr7QHot5i1+me7TCHCeN9PdS+O2cSXROG91GCPhBS130yF1BLFEZp7g3JIF8O0a5eJEMjwix2kMVjXVoxUMVBODoIv5Dk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5130
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10024
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106230083
X-Proofpoint-ORIG-GUID: N2-sciSsRbv9xa3us26WoNr9n3_mi-Jg
X-Proofpoint-GUID: N2-sciSsRbv9xa3us26WoNr9n3_mi-Jg
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lw3j0-009IKz-2H
Subject: Re: [Jfs-discussion] [PATCH 1/1] jfs: remove unnecessary oom message
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 6/17/21 4:02 AM, Zhen Lei wrote:
> Fixes scripts/checkpatch.pl warning:
> WARNING: Possible unnecessary 'out of memory' message
> 
> Remove it can help us save a bit of memory.

Looks good. It's in the JFS queue.

Shaggy

> 
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> ---
>   fs/jfs/jfs_imap.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 937ca07b58b1..47913c3d7e1c 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -103,10 +103,8 @@ int diMount(struct inode *ipimap)
>   	 */
>   	/* allocate the in-memory inode map control structure. */
>   	imap = kmalloc(sizeof(struct inomap), GFP_KERNEL);
> -	if (imap == NULL) {
> -		jfs_err("diMount: kmalloc returned NULL!");
> +	if (imap == NULL)
>   		return -ENOMEM;
> -	}
>   
>   	/* read the on-disk inode map control structure. */
>   
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
