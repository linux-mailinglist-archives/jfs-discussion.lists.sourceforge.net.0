Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E70B084093B
	for <lists+jfs-discussion@lfdr.de>; Mon, 29 Jan 2024 16:01:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rUT8X-0005Yb-HK;
	Mon, 29 Jan 2024 15:01:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1rUT8V-0005YV-De
 for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 15:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E3iJWXxvIjxWkd3uoZWIZYyOqlN3aN8/av5TCb0XIiQ=; b=ac/WNmfNPacXZUYyvSKTheJrBb
 cmw27QcNmaORRwcCxoUEYzzPGcPJSP2KyomWZiJ4SmhLrC90L6NtA5RgRsNf6JhajVFqctD45eg6+
 mFGDUSj2Ajv1Ma54jZ1qtQP+M6ZNWQkDWZuZz6CDUhGouvC+TJpdp6yCZ31FwEmvFk5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E3iJWXxvIjxWkd3uoZWIZYyOqlN3aN8/av5TCb0XIiQ=; b=KfOVAM5kmxDGVMZc6rsanFgNBJ
 96WDH+ItWlr4fmrORhJNcaC/bsk7mPP49Z9zRL9zrUcyioaArdicIVzweDlhPlK9xSTBuuQEvpNXc
 MF8EWICeNE2MxC5qYIZPkL5oOqkZd1yxxP98waRFog1WZzHV5Vpu5p1etWdWdnIu9tT0=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUT8T-0006oU-SS for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 15:01:24 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40T9hsOf018222; Mon, 29 Jan 2024 15:01:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=E3iJWXxvIjxWkd3uoZWIZYyOqlN3aN8/av5TCb0XIiQ=;
 b=beP7cfXkbEROzqeeQeQPeZPpphWzBZcBLkNLX0Ljri2FcuaYalC4SyKLyH5w5YD4xWvw
 PSmkt6AljWvltvCrVptTeSVNKH5nKY2yjRubJg77W+3Im4vlrFSAlk3uawBF9XPQYeGU
 vVmLb9dWM1gtDnJx/LjxmgugnBS1vZ4evRbJWPZQJMGaH2HqzM/7UpM12h43V1qw/pZq
 SYSS2tMDr6KO9VymQ21a5dnXWEyan+kF9AgkvR1QHwXHDaQvRaWwDHQLBFjgSb4vhZwb
 Zihvb0tdVl5HH6I86zz3nIZuRqkBFxoy9Yef9+QWMvb+DIJvD/IUJZLh4uA9C+4uINW9 mA== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3vvr8ec2tx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Jan 2024 15:01:03 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 40TEXf9P035241; Mon, 29 Jan 2024 15:01:02 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3vvr9brf4c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Jan 2024 15:01:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Er7wadf0KrYhVHnrJElmppu16CFN+m67D0P5BlIkpUvMXrVPVyEJdY9Z8HFT995ytl9PtPkUEmb6UPu2rVFLMY1BHi/3SMW7n4PdF8gL62Xx2QIBvmuhdXY6ai3YXVcT1W9+pHwZd5SB+LNReu2mFpkJ1LVvxPmJv6SZyrCPpp++s4j4y/CBU6dPtC1NgwcgzYQd0mdhb6+PVRBRjQhWZnkyBynXY2p5+f9u6bP2wgbN6r0qS5ojqx6cqcrqEE4CkEK9klfkmrMFXVkJBZIXB2b7UEbA0H+tzxW92NVQRs7YfBadFLA6tm805V7JU9DIEd/rUIYIUduYFcB9azR65g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E3iJWXxvIjxWkd3uoZWIZYyOqlN3aN8/av5TCb0XIiQ=;
 b=PXM9x58qQ9VENit9ZiOWkuVyD3m0Y7qGObZDsr1M8Ykb+9EPFVuplALYwnC8YkRGY9UXcoweYFajNRXMEmbLEY7yl2Y4jrjTi2oHv8X4qLMlKtOBO7BnlcjTC6efARfrjHYLx/rfNyUw+BawXxOMmQ3guhgjFm7XwhmSWxXqNAMyF2eRe/q3XskiiVtlIqLSsFaXN6o7liAnG3V/xa6oMICuZViVoGU4t374WdOjDNsNd3FFVjgv/oEF/LlTRKqgmL2bDueEZ2XmUrKOWR1nLP5bcnmxYlMI5vJzdEZFtJ5brJs4jSwnQHGUF7xTxZBsfOcRuWkP0oG0jBt3skFL7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E3iJWXxvIjxWkd3uoZWIZYyOqlN3aN8/av5TCb0XIiQ=;
 b=hzdsxmuOPv8Vitir/AOn+TJB0e7K+/4GP4SL4rDig27v7gjLCTRUQ5SiiucuZ6KNFOcaWRQfxctnkZ8UcQm7pL/PvbBbnbjRf+2kaj2QBFDlXlXWP8EJCc6a4z+Kxvc+p+84h96VF4U9SY0hsQe12vFCZ0rt784lSvR8ig62cT4=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH3PR10MB7807.namprd10.prod.outlook.com (2603:10b6:610:1bd::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 15:00:59 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0%6]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 15:00:59 +0000
Message-ID: <551e1e86-f990-487a-ad88-53799df0882a@oracle.com>
Date: Mon, 29 Jan 2024 09:00:56 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Matthew Wilcox <willy@infradead.org>
References: <20231011143937.31996-1-ghandatmanas@gmail.com>
 <Zba9zRWq6rZhWn-p@casper.infradead.org>
 <a25c75af-c961-4ca6-9810-dbcfe64753d5@oracle.com>
 <Zbe8c_CPNP8IdphB@casper.infradead.org>
In-Reply-To: <Zbe8c_CPNP8IdphB@casper.infradead.org>
X-ClientProxiedBy: CH5PR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:610:1f1::23) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH3PR10MB7807:EE_
X-MS-Office365-Filtering-Correlation-Id: 2737b79f-1724-430f-1775-08dc20db1a1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7Z+JkjxpaJCBgd3LIpxvrvXl/9m7k/BnaTohUygjuiItDTc3SF1zreqd439Q1mWj3LPLQb2Ryp0oW4EncjGi3Cy7j3WvNSzJHVwRh4hRQLwMklg7vIlSYboxe5S2mb6SDXmxQtWvJFm+uHGhNqKnA9Glb4CuPLOaJi7pY4M6rKD6oCMkRhY20F0CMy7g7QQATfVAwKKAsGfi3KtWOF6jyhpZUI3rOzilSMj4dXxXtmowggsfYUfjvrzGazI578DHQDhK5L3sxdJKzwurYj/LC36vs8I1sjXpXUWhjr/cWiJKzrNTe6LnR4Rl5nkzmnoNpyMFv+6zcZ/h4W0Ya3dQUlwtIq5JJJKYs7ATItYJGRjS00nwN0BJxoYSKxroazPJkgjjy/1OoQ05Y895avHNPZfYgC08dnC0hgfFJJuqJkn48l3zbkaHLXe54N7PlsCyuj/qBu+isYGGRd9vOg9l8NzO+luh1/hNackx2ttWZptc2Qg+0zS7fJk2EjmsrgUJfXSc1Qff/jn6z7kPZLOxM95P7rcC9/xX0rBLoFbl3hBOAOCJDKTmJjXE+sX4mLFbjqvNZQhHvQ6thTVojUlMNEC0uwmbePtPXfmystdg+txzoBbVay1QGr0TUZr2hi2ziR5mgGnn8U/8OBJI6F/rHA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(366004)(346002)(39860400002)(136003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(26005)(6666004)(83380400001)(6512007)(6506007)(2616005)(38100700002)(5660300002)(44832011)(8936002)(4326008)(8676002)(41300700001)(478600001)(6486002)(6916009)(2906002)(316002)(54906003)(66476007)(66556008)(66946007)(31696002)(36756003)(86362001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVp4a1l2ZTRsNEpQV3hWaE0yQ0lGVjJSa0kra0p4TUJpVmtYczIxZlUzUmd4?=
 =?utf-8?B?Y080dTd2NC9lN0hDeC9pN1IyN0JZUjB0eGUzcC9TNUd6b1lTTFI3dFVZVFJW?=
 =?utf-8?B?RDJMUUVpSEtSeVZVTm1mK0JTVXVEU25vUm9lSEp6OWxGNWFLR1dVaTBZL1dH?=
 =?utf-8?B?eGM4dEt3KzYwNytNTnRZTzc4YTVHYUlKc0RVOTcwNUtXeG54ZGZ3YWxEdjcy?=
 =?utf-8?B?bnVPbVQra0VJOHZmK1k4MjNTK2pRSkE0aEpzMnQrSGxQTUdoUHBTZjk2bm1L?=
 =?utf-8?B?b0QrUlM1cUp0V1lMcnE1UGZ2MHJJN3NPQmxWbnZxcy9ibDV2VncveFh3Q0R1?=
 =?utf-8?B?cGlpMXVEU1kyOXpha3dMTXVuUzhhK2pNcHpQR2w1b1dLNk50Qk53ZFhiUUlN?=
 =?utf-8?B?djdQaTYyOEdzY0U5aFRpVnFxb3JrMGpEdkxkandDbEdEM2V2VW13ejFDUlRk?=
 =?utf-8?B?bG5OYVpHekJHVHI2OEFmOTNsTHFlRk5JMkJXK1FJaG5xMDZhenNrRUo3eEtJ?=
 =?utf-8?B?VjJzbXVrcVozRUZzWG9Bc0FVdjlIZ2VmUWs4V0hnMFRLaC9QbUpCWE9GdDhv?=
 =?utf-8?B?cXQxN2hYL29IYzJUR0gxQVI4Y1hLOTV3VjgzVm9qbDhXL1VZeU1PcnZhUStr?=
 =?utf-8?B?ODYxMTVSOTlNUE1UNWYybnQ2YnNHMkxJUzJMWCtSQ0pSUThFRUkwQzRMK0xz?=
 =?utf-8?B?UkdZV2dLZXdyZnloVWtqOGx3Tm5ydGg1RW9UVFpUTVdqTXNnSDhjamxDRTRi?=
 =?utf-8?B?Um1WRjFsejEvVVJaWmtzeWpPSGFRNi9mcG8yWUtpOE83NTA3cnFCZ2VQRTU1?=
 =?utf-8?B?UmoyWm80b0JCTmpNU1RtbnhKS0NiUldseDAvZ05Xb0JpTFlnTWhROFRWQ1lB?=
 =?utf-8?B?REdpOWNQUTZjVld0RWFsMzlYS3VOK2NyYlQ4TXpFR3JkSm04TEZMSzhQekZq?=
 =?utf-8?B?SVVuUCtGUkNFVS8ydXBEd0FXR2o3VkpCZHp2b0VCbjFBekhrMXpidEpLOWxC?=
 =?utf-8?B?T3FneG9aSCtodnQ1YnJoaVVObENRU3piaUpQenFrNWUrZUozeFkrcGpQLzBy?=
 =?utf-8?B?dW1qWGlEbFg1SkFtc1grbnh4ME9SL1FCRC9ydEpJWDB3REJXYlVtMnIwUzBt?=
 =?utf-8?B?MlhzT3dic3duSUMxNUFsejNheTNlVzF3MHJ2R2RqcUc3dysvNlF0WXE5RS9Q?=
 =?utf-8?B?em82bVZ1VE9ma2lCREVtU1k1dXdPbkZrRWtEbFlFaW1MS2srY0VrdG5pVU81?=
 =?utf-8?B?ZWZlamxwU0svZ3VzWjN0N2tYZzhkZUFPQW9mNXFFTmFYaVFVYjEzUnRqYmJ1?=
 =?utf-8?B?SGZrTXNxdkw4QjNsY1YybzU0bmh1L05meVNFOGlDUkpuSWtQR2lwQlJNdXIz?=
 =?utf-8?B?TDgzSG9xZytVcXV3c21xUCswZzlibGc0aUtoRGxLcllROGZHK1p0clcxV0R0?=
 =?utf-8?B?TFBCc2F3UDlDMjFDN0o5TlFNRU92Nnk1MWwyR01uLzVnK0ZOVHhhZ2xvLzBh?=
 =?utf-8?B?S0JMdGw4WFl1aldseG9JM3lqd21DWHpNQW5iRXVFRzdURDgvZmNTbno1VEli?=
 =?utf-8?B?Z3BJQTJjZXFTTE55SEU1YmJ6WCs3TU5NRXgybVl3YUFBU2ZmY1BTVmVWa0Ry?=
 =?utf-8?B?eHhreVVyZDU1Mzc5U0VCMU1DZWhsQ1dpVGdVNWhYaGVGZzJleVdra25KWjJ2?=
 =?utf-8?B?cUhmWHF0d2ZWTDJYZmtUNlVtZjZCY1FqRVd6M2NlVjlsRWEyeEQ0NHlwZ2oy?=
 =?utf-8?B?eE5pUnVEQ2NVQTJmZVZsYXlBUjRtYkNTa0VmUTJhMDNVNW9tZWNQMm8rR0k3?=
 =?utf-8?B?eUlCSE5ZL2lpOGtsSEcrV0VFd05DekFtWkxsNUdTQTA5UWJVYTB6bUFBbEhH?=
 =?utf-8?B?QnBXYlEvOUNyQ3ZQNHVKeFNZUzhpSEZhbElhWjNaY0I4VXhoWVhUY3NRZkRN?=
 =?utf-8?B?WGg5K1VwTUxtV2NxOGxHR1hoOFVBbjlqak5kOWRHdEVtV0JBcXBrMlI5a1kw?=
 =?utf-8?B?SmxDYktUVWw2ZTVNYVVLQ0tUY1NOUzl0TzF2N09RamsxY0ZmdSswellDYm10?=
 =?utf-8?B?clQzS0FFUUJnaVlUWTQybnFBS3ZiRTEzZDVpdWJkSTEydmJDMUZmQjFlOHpN?=
 =?utf-8?B?QldyU3RvbUJ5Tkg5SFJnTXRwWm9rbFNqTEFBbkI5VmNBa1BhQ2M3SE5KTERo?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: lvZPdbbHicsq6rfzIZQVpNtHZGqVG3bUyqttUFBK6cGWD5Nn5BUc+Hv/MkBAk3IKm8IzBO+0XMVAgNP9zCAIFSbDuRyspAQL4HMHzQlptatvGzf4mGSxYRylYPTBWRpatIUtTP8hv56iHUPahD57emmeNpSviKk9iRXYUapamBt+1nvgLir3FFV1rrV/FOIFjln2vRDZLrdkqfbzlO8jFf29KMYAqGIRar3hpuvM5lAGIPcxmAKqTDEjBTBwYCQmNO0QJfbTIDP3jhISbeBMWoNasRLGolFdYmtdz5qUCwdb/klDeEU/jCoIm/DC80+C5GSXd1zgyvGKhDzoGVaW53SQ1aH/ibwiOqbD4/aFRWoDHGzZ+m0qmfZaXbklppjb5fYxKmeEV0TyyXmxMsBoy/ecmZxxtMg29LOG9NF9/1nT6lIZb3KVMPlFvumvT64+tHGBuvv5XLLYgB2JNW6FXtBScRqpnPA2L9WFPli3Np5Fu//cMJM1lB+tjyhq6QnX6tba0F95JFxtwKz4W6hp5jTd3hR38EiStagcFSZkqrrBlKgUr1+eUQHwAViw/zpNeYb2y53bTbwKdofVDznjYkdQ7ZkrmaS4p1f0crsIghA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2737b79f-1724-430f-1775-08dc20db1a1e
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 15:00:58.9299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jFqj5ZmQ0zIdIrGv3zZTGykoGhn0OhmBYkReHMD4VasPh5Sz9ni4CdB4YyHBRbnLl0E01mMcrgltVU+H5kM5Xy+6IrDX2i6jcxSQu7SMvkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7807
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-29_09,2024-01-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 phishscore=0 adultscore=0 mlxlogscore=817 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2401290110
X-Proofpoint-ORIG-GUID: 0kz4xayiPAdm1rVR57L9K6tpqvInZbP5
X-Proofpoint-GUID: 0kz4xayiPAdm1rVR57L9K6tpqvInZbP5
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/29/24 8:55AM, Matthew Wilcox wrote: > On Mon, Jan 29,
 2024 at 08:39:18AM -0600, Dave Kleikamp wrote: >> On 1/28/24 2:49PM, Matthew
 Wilcox wrote: >>> On Wed, Oct 11, 2023 at 08:09:37PM +0530, Mana [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rUT8T-0006oU-SS
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix shift-out-of-bounds in dbJoin
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
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: Sasha Levin <sashal@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Manas Ghandat <ghandatmanas@gmail.com>, linux-kernel@vger.kernel.org,
 syzbot+411debe54d318eaed386@syzkaller.appspotmail.com,
 Linux-kernel-mentees@lists.linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 1/29/24 8:55AM, Matthew Wilcox wrote:
> On Mon, Jan 29, 2024 at 08:39:18AM -0600, Dave Kleikamp wrote:
>> On 1/28/24 2:49PM, Matthew Wilcox wrote:
>>> On Wed, Oct 11, 2023 at 08:09:37PM +0530, Manas Ghandat wrote:
>>>> Currently while joining the leaf in a buddy system there is shift out
>>>> of bound error in calculation of BUDSIZE. Added the required check
>>>> to the BUDSIZE and fixed the documentation as well.
>>>
>>> This patch causes xfstests to fail frequently.  The one this trace is
>>> from was generic/074.
>>
>> Thanks for catching this. The sanity test is not right, so we need to revert
>> that one.
> 
> Unfortunately, my overnight test run with this patch reverted crashed
> again with the same signature.  I also reverted the parent commit,
> and when that crashed I also reverted the parent of that.  Which also
> crashed.
> 
> So maybe there's something else that makes this unstable.  Or maybe my
> bisect went wrong.  Or _something_.  Anyway, I'm going to spend much of
> today hammering on generic/074 with various kernel versions and see what
> I can deduce.
> 
> So far I see no evidence that v6.7 crashes with g/074.  And I know that
> next-20240125 does crash with g/074.  I'm pretty sure that v6.8-rc1 also
> crashes with g/074, but will confirm that.

I'll try to beat on it too and see what I find.

Sasha, maybe hold up on to all the jfs patches for the time being.

Thanks,
Shaggy



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
