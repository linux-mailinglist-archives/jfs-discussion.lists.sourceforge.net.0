Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CB753948F
	for <lists+jfs-discussion@lfdr.de>; Tue, 31 May 2022 17:57:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nw4F7-00038x-IM; Tue, 31 May 2022 15:57:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dave.kleikamp@oracle.com>) id 1nw4F5-00038m-BU
 for jfs-discussion@lists.sourceforge.net; Tue, 31 May 2022 15:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QlgH1BjkSWUI0wsOJ7ls7X/y/Kkje6Igv6hWOjcjq/4=; b=DAkFihoANDjkvLNPG6rLzmDLK5
 yFPkWZQXQBLUQLEpIk7RAqJyRW+uXOds54e4sICAR6oYrcOgv2Uve6Fy2AGZ/hwacNKFuQ5bad2ns
 wK6JP96e/MpSwbEKIP+dzVfMT1DrkdXIcNAYNrFedjSmiwUB20DyzZJ4IchbHmrRGikc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QlgH1BjkSWUI0wsOJ7ls7X/y/Kkje6Igv6hWOjcjq/4=; b=NSCOzImktY5hMgws1mTXMmsU9m
 hfdpHmWFWw8k3XKpdN4ibWq0B0u2nq//pq8gfZUb9HZdUA1lr7Vb6oE5VXFkA9qos6vx7PGmeucbj
 taxxbWBg2j+I3La3K3B7tRwi85+kgeSl3JKcD8+dKIbor6xi/vBusySO3ztFKBZsEraY=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nw4Ew-00046w-HI
 for jfs-discussion@lists.sourceforge.net; Tue, 31 May 2022 15:57:11 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24VFtX8p022307;
 Tue, 31 May 2022 15:56:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=QlgH1BjkSWUI0wsOJ7ls7X/y/Kkje6Igv6hWOjcjq/4=;
 b=Uml8Dkf9hyvk+rFo+yZEsbUCLu2oYqfXQpg6/qiYqrxzjrT1BEHK1aO8wunO5lUdp1x4
 HF8n4HA8ht7hDiBGn9jK5qbXC/UMPLTczdhkdJJ8DE5sTTmB4sdfi85CHqD0KmXebRbK
 fptl5MI7wm2dlV180Y8CYzuDra6qKP/pRiThBolTX2zv+rUZe7C4Fk+E+8Y33nOZ3mpO
 gc/KgDye8elQEZmiRqSt7LCk2vfVF1wy4s+Zuua6pHGl7H34yYcD+R1kVAQ9w+mt4WAn
 8l/stbx1BxMyedxnxBxg51CP1ogD1kNkCz+8QeQZ/7xxd5E15nbqgj4oC0IDT8BOKVqA Vw== 
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gbc7knck5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 May 2022 15:56:51 +0000
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 24VFu6hm009261; Tue, 31 May 2022 15:56:48 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam08lp2172.outbound.protection.outlook.com [104.47.73.172])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id
 3gc8p1x9ea-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 May 2022 15:56:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dUrBTMYuUtTvgBfRGhq4OIzggEqlcfTO7qn6QC3ZWgX0JpjpCNTut2a9UJ1sFPlLmYxi0PKRjDwGYhixkCITXbqELOW2C1WF0d1uEQtVguIkkUJUDd70x2Z3SqCd4UvICXaIo/I5md8Mhx2T6BRLWYBBTrKtQk/2iXkDU+eiaWf0ALjWD5yZepz/r25C9VBWflzUvblgeFcSvPkCqoeIQ1n4HOBk6E1UmcnKDho1iNgpdqYKapMDkMbBa8HHZ46JYXropaP7bzgK1k+yaC4mR51CuEbl0d37a9aa0KJUVm75eO4DNdAi5w2o2iwPOkrybRMSPKyUNItO26zlsZsxow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QlgH1BjkSWUI0wsOJ7ls7X/y/Kkje6Igv6hWOjcjq/4=;
 b=Vffd5DoLYFZs2Eq8lOUBh+AFVrB2UQZqadml5y1C5yoi3AuGSTcQpKT+nJIaA2SoK6l4jKp3ROBWf/XKeLa2lI3k8yfFnsXbOGMJXvqx4DlZ7j4fmLuDsCI8yYWNlUgcVmA+ZdFrp8kPeRwNuXplqoU0ToHhnDWlGkQX1wTKdQerC1upbseGNrGnRIWFYA6I1SeeZaHO2NlML5i+Hj0xwG4x1QfVpAlItsQwdHd1+8ao4s55u/WYzFFEaJszhs8Hph3YmM5HcD2hiSIt3gwQx3hHZ6rPP0vvp8G/o0xoFjZLml+G1yDa3J8k1SyF1T9DI1shuh3Xv/nnLgaZaHR8hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QlgH1BjkSWUI0wsOJ7ls7X/y/Kkje6Igv6hWOjcjq/4=;
 b=vf+5YPJcllI8v9cKraZpqWLAeSauYK2T3GsiwW2wPROJSyan2Qiis6+nfqRJGoS7AqD0kzcjRAdD69+Xx72Q0GNRS1pzUyvKsMoLyoEHtTgadaO5HAAxa6zbUxV8u2D8GEs2Vc5YB1HyE8DH2b9MjgoFNyDWn/Bz7d0pMV5gG00=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by BYAPR10MB2984.namprd10.prod.outlook.com (2603:10b6:a03:8f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.16; Tue, 31 May
 2022 15:56:44 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::d09d:5392:dd4c:7a80]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::d09d:5392:dd4c:7a80%3]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 15:56:43 +0000
Message-ID: <4ef9eb26-9177-1e62-1b43-a5bfff0287a8@oracle.com>
Date: Tue, 31 May 2022 10:56:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Wilcox <willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220528000216.GG3923443@dread.disaster.area>
 <YpGF3ceSLt7J/UKn@casper.infradead.org>
 <20220528053639.GI3923443@dread.disaster.area> <YpJxEwl+t93pSKLk@mit.edu>
 <20220529235122.GJ3923443@dread.disaster.area>
 <b3b1a6a0-f6fe-b054-c3ad-b6ab0f62314c@oracle.com>
 <YpY05ROgPowLbC77@casper.infradead.org>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <YpY05ROgPowLbC77@casper.infradead.org>
X-ClientProxiedBy: SA9PR13CA0067.namprd13.prod.outlook.com
 (2603:10b6:806:23::12) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01f742df-a128-4550-5e3e-08da431e2889
X-MS-TrafficTypeDiagnostic: BYAPR10MB2984:EE_
X-Microsoft-Antispam-PRVS: <BYAPR10MB29845C2786438EB867DF889B87DC9@BYAPR10MB2984.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rRTxI+qtVxjNQ/ikaPr+O8T7OBvywGRusBdrdtGPssbjxoNVYthoHRizaAWKF3SYaV+UkVd79/4oDyAdTv1lD9HGf2kKy/HlL7b4HU6Wwn7NMY+gNgcwcq3QbuwXBd9r75DM2BXmhFOxYBQA7WfrLQJsb/OmaqJmmdAdYezoZ9Kw5LH36SRZ5BIjD0xZ2h+lQFVcO8GDh7gcOm+eS50QnOpY4P1AO8kb4eeepMERqlsxVkHIbnmg/8kaghHo5iwdG6JE+f6NrYP76rmjVYRgrkweWK3uO2TyvH6J7p6cWUguXfn6BL1H28nYgPDw2mi1yom4c5iwV4jExX1r7P+gw/NvLlBvUTCigylimULwaMBwLQ6SW85WNRytWTrxCltS1h9Emxco+WYbwo/RA0sIitazbCiEFYbyh8MzdMAytigwMzXeX/s9sPLdfSQW0/7it5zIUteBCbTkJRTtAmengZP8/kXDCF+o2LrQPj0HgqjMiS7gKY0e0fA5JpI79rEM5uz5fFmR8RCk5LGmZWFdeoJFmK0ZYSQ+TB10K/eysiOilDsD4Hw18jYm48arpc2YdW7GKldFaBadyzdLS1U15zEBq/KHqMONc7KAg8lkbksfnK6fV7bkTJQQnMNvskGESmhe7HeNJ10Bq8XQvWC80DVPsaRM4zHR74ng3r2/xsH/5GYmjW5fYHTb/fwKMUf36FFeNd+uGNzO5qOBwXajxhrQ+NY0DdBIjLSmPZdYkQvpqQfLJhzLZxKXjehuCzMvbHV/OjfWZbPlTXlkaLiNsdmtGSAYc7XpSqOGP4/jyEeECIeyvRkBiBKwQcGdmZ5T
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(38100700002)(8936002)(186003)(4326008)(8676002)(66476007)(66946007)(66556008)(36756003)(6486002)(26005)(6506007)(6512007)(508600001)(966005)(6916009)(316002)(86362001)(5660300002)(2906002)(31696002)(44832011)(31686004)(4744005)(54906003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVBoMFdxMUl6Q1JlSFViWTlENVRhS2FzMFYvY1dxeVQxTW1yNS9kbkgzT2M5?=
 =?utf-8?B?WWUrbFJSTnM0Z2N4Z3BEell0ZkVFcUwrd1hjL3U5T3p5NmpXQzNWc0ljM01L?=
 =?utf-8?B?aE1UU2lYVy8vU1dSQUd1RUNyMXBPNTFqeWw4SDJ6RUJCUDRGS0lZc3ZSZWVK?=
 =?utf-8?B?Z05zbC8zeE1vSVI1SzhxZURWVExka25iaFc4Q3JuZmlVc0orK3pSNUdXdzdt?=
 =?utf-8?B?RUlBNEE5VUZGditSbWRXdWhmU0VjV2pGdVBoSHZCV0tCTFh5akhrRS8zZjFx?=
 =?utf-8?B?MDQ4b09lbHAwODRSVkx1cFg0Zms3SENxaWZBNm54NDdwei9NUWpWT2dZRmhs?=
 =?utf-8?B?RmJLS1JXcWhkUGlWY212cFpEUEFudkwvV2oySWdxSzc1SFc3ZHBaYnNRSk5J?=
 =?utf-8?B?ZHlMeTcxdlA4MS9nWjZ4ZFZqWmZkeCtnbGVBR2MyMXF6STljU1NBTmFXNEhR?=
 =?utf-8?B?QVNuaXZ0WHJ0aTdLdUdpZkpjZndOWkZiaThtNFFURCtPaXdCR1lEbXRpNlBU?=
 =?utf-8?B?T0dJeW9iYUZtYVlTTk5TNmFzdVhieVVSNWtnTEs0RkpFWjQ0UDBEazI5RFRZ?=
 =?utf-8?B?WnpCbG5xYzVDbTdJOThyTWo4KzIvYm0yUnVXZkRBYWRmUHQ4dVhOK3hxV3BK?=
 =?utf-8?B?NlNlT2l6Ni9WU3JEVDRNQlhUUml5MTRDdUxrNDIrTE4xVjk4azM2dHYraXk1?=
 =?utf-8?B?bGtjRlhEOWNmdHowc3RQamt6R2dVd3NzWDFoWmJkQmg2U3UzMk1GM1JJK09O?=
 =?utf-8?B?dTBGMDlhajNxbGpkMURrMVRLZmJpc1VONUdNYUpmZWpHWWNkWFlDRkxnQU5z?=
 =?utf-8?B?cHJ1eUhSQk5vUVZ2MFBFOFlxallvVzRUaEpSYkdkSnJPZUVQczFqZUFOMmFy?=
 =?utf-8?B?SjVwTGMxQXBIY0hpYVM2MlVZUk9iRzNTYjJ3THZDY1lJZDdDQUQveE5YclIx?=
 =?utf-8?B?WjMzZkMwaUpocnYwRGVwSTdSdnM5SmFWdU1nWldzR2lqVUphUS9BbWc0Z1JV?=
 =?utf-8?B?Y1hoT3MzdHVLTkNOZ3plMDdqUzFZZWw4c0dTbHBwWWg3SjNQSjF5SEhQOXUw?=
 =?utf-8?B?SDRoL2ZvVjJGSXpKUHdzOXF2Z3Q5aENIaTF6NCtoQi9iUEQ1UU5uR05MMXV4?=
 =?utf-8?B?b3hpNk1KREZMbkVJcW5OZmZRU0JJNTJEb0VIWkhOYnEzVWxaeGN2dTlrTUNz?=
 =?utf-8?B?clFxVm03bVlMRzBaMUxXd2V2anpyN2ovcUF3dVN6N0dXOUZjSE0vU2hUVXZK?=
 =?utf-8?B?SW9iaHh5SXh2TTVNQkVzd042RXJkVURsdFdWc0h3cmFtb1M2ZTNJNXZIODJy?=
 =?utf-8?B?NUxYV3dqbUpkRTQ2QVgvRVFXQk5ITkYyWXQ4Sk1Ga0h3aFRUWEc1aFMrbVVQ?=
 =?utf-8?B?UWhEMmg5MlhwRmsyemhiZVZLNUQrMXFrSTVJaElJeHlZWFdsUUNJczAramtD?=
 =?utf-8?B?VTB2dGlrWXVwaVNRRERQTE5yaGJaUGpVbWl4YkxTMmpXVnFibHFvdU83cG81?=
 =?utf-8?B?bnYydFF3RGFyWUQzcTZma0RYYmwxTmdtS0dVaEJROG8zbUUvNXA2OVVJMmpH?=
 =?utf-8?B?MFc0TzJNRjh1ZlBDSGtCem4wVGt3ZjFPT0dKMFdreXRSTytxOUJiVm1BdkFK?=
 =?utf-8?B?dkpnM2h5T2p4bk1WRStsaHpLZGhSWUxlTXpGR21JbUM4Nk9XTmFMN0ppM2Yv?=
 =?utf-8?B?Qy9KQ1JZTTcxVXdtUWxxSzVDb3h6ZTF1L2MrWGtKenlMbkxYeDRsT0dmSFZU?=
 =?utf-8?B?ckhnSUMzS1FzV0VtaWY0bi9oUTRkWFh6ZFpoQzdYbGhXbk0yOFBpN1JxOXZr?=
 =?utf-8?B?UDJLa2dyN0NjWUtIcWprMENlUTRqR1NDbUhnMVdwNERIaFVBTGxZcWZ3Vm5o?=
 =?utf-8?B?eU1aY2dveGd4QWd1Ti95VWR6QjJUc3Zmd2VnNDcxZHhaK0RwVXg4REp5K0xn?=
 =?utf-8?B?VDlkdGZBbTN5bUVINHlwQmcxanQ2OWh2RGhxQ1VhRUZha24rc2piUVNoakRM?=
 =?utf-8?B?ZERQdHdiMTlpN1VHQkJEMGJRN1hTbzdyV09jcTF3VVdldkRWL3dMR1dkZGtK?=
 =?utf-8?B?ZlZXd3l0VUx6bkxabWZJS2VyTTRQeGV0aU9kOHhONTFZOHdGdFNQMnlScUJo?=
 =?utf-8?B?U08zTHhYRktQWkQvT0wweStGTE1DbmhVVGpoS1BZNjhqN3pqSVlyY2tnY3Er?=
 =?utf-8?B?Ukp2YU9MM3BuRzB6eWhtQk82a3Y4ektzTFZMVGQ1WkdqeUpiMGZzWElVN0VU?=
 =?utf-8?B?YjVYUVl4NHBJOVZDc3JtS21HbnRhODZXZ3lhM0ZJQnhpSFVRbkQ1V2JkQ2dY?=
 =?utf-8?B?ckdFSG1FUU9YTElCUkhrU2lLWkE0MDd5K3pZSnFieFRCSG5DNkxJdWc2c0tw?=
 =?utf-8?Q?cMAxHomctCd476js=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01f742df-a128-4550-5e3e-08da431e2889
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 15:56:43.7173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PlpFPkMCVhlbkYQtSFBTOM2BEyMTOv1MLG2ecl6kfoIRGNLOIUN1doRYXNLtqZWSZDskFEdxuA4i7AReIsttW5GyMGNnyLMUoC871jXao+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2984
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517, 18.0.874
 definitions=2022-05-31_07:2022-05-30,
 2022-05-31 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=931
 phishscore=0 suspectscore=0 malwarescore=0 mlxscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2205310078
X-Proofpoint-GUID: w9C5IjLiR39jacqK0NNIesAdMfYua67K
X-Proofpoint-ORIG-GUID: w9C5IjLiR39jacqK0NNIesAdMfYua67K
X-Spam-Score: -3.7 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/31/22 10:31AM, Matthew Wilcox wrote: > On Tue, May 31, 
 2022 at 08:51:40AM -0500, Dave Kleikamp wrote: >> On 5/29/22 6:51PM, Dave
 Chinner wrote: >>> "Just because we can" isn't a good answer. The [...] 
 Content analysis details:   (-3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.8 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nw4Ew-00046w-HI
Subject: Re: [Jfs-discussion] [RFC PATCH 0/9] Convert JFS to use iomap
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
Cc: jfs-discussion@lists.sourceforge.net, Theodore Ts'o <tytso@mit.edu>,
 "linux-ext4@vger.kernel.org Darrick J . Wong" <djwong@kernel.org>,
 Dave Chinner <david@fromorbit.com>, mythtv-dev@mythtv.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 5/31/22 10:31AM, Matthew Wilcox wrote:
> On Tue, May 31, 2022 at 08:51:40AM -0500, Dave Kleikamp wrote:
>> On 5/29/22 6:51PM, Dave Chinner wrote:
>>> "Just because we can" isn't a good answer. The best code is code we
>>> don't have to write and maintain. If it's a burden to maintain and a
>>> barrier to progress, then we should seriously be considering
>>> removing it, not trying to maintain the fiction that it's a viable
>>> supported production quality filesystem that people can rely on....
>>
>> I'm onboard to sunsetting jfs. I don't know of anyone that is currently
>> using it in any serious way. (jfs-discussion group, this is a good time to
>> chime in if you feel differently.)
> 
> We should probably get the mythtv people to stop recommending JFS.
> 
> https://www.mythtv.org/wiki/User_Manual:Setting_Up#Filesystems

Good point. Maybe not mission-critical, but introducing any new 
potential file corruption can sure make for some unhappy people.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
