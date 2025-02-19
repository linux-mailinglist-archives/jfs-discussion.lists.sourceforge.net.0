Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F167A3CCBE
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 23:55:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tksxZ-0006EA-WB;
	Wed, 19 Feb 2025 22:54:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tksxY-0006Dz-9j
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 22:54:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MCW0kiqX9F5p6pNDBgbXyflgy1pW2BVjUoJJ/D4kiJw=; b=gF+pvBoficVukOJjpCYJurVyU8
 zBb+N3X/q+V1Dh++nvsb1pbGzbFDjHwjLXEhFWz0qviNJhX6TPbDN5PmMKozBwX3Ogkl/onL27RMd
 34f+2cFN9ghSGiftX0DsrdV69YrkzSkVdeLivlF2ABLeLHanDfAzCaBlTPg8QQ6/iLHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MCW0kiqX9F5p6pNDBgbXyflgy1pW2BVjUoJJ/D4kiJw=; b=MukABRxen0mhCRtfUMAtF3olpY
 4vvYq5QNICSXWcWgl/Fqx2WIcmVS/jBZZpDyypHlogFNY8ZZ4IiHepRfjN1mMySKxgi5Yz2UchDz7
 261A88RGZlhIIsqircqf5A3TIqRDlwojH8O5RtUWNMpJNBgQUqwQRyISdjCU7E/WJkpM=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tksxX-0004ab-IO for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 22:54:28 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51JMZZvn024337;
 Wed, 19 Feb 2025 22:54:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=MCW0kiqX9F5p6pNDBgbXyflgy1pW2BVjUoJJ/D4kiJw=; b=
 I3ZubPlCkYzVCzTCA6yZJVWlvmghccjr2K7I60bj27/Idb3ox2XWYNdnb4IFJ6Pr
 N0CCv6slkX/jMei4vXbXjHD12qUGRNJAVMxGWqVrKR31F6D7s4MGk12XOT/FZDSs
 NiuofXc5IOjAic2aeG2ujjj+FSvZhJ2pe98U5Z3XdGMO+PGNfZ3BirKtA/t9vw0v
 jAWr/TxvGIHxEkhwUocCJiYURDMH/jmrmSw4QvFdnANPzlpTRkz0O9tI30q/xEYU
 a0V36aVjmcATLz+/VwxGEAQpKXWW7R4+9LGwdJSm/OUTWn8LWk43fc1yOJA40wNf
 xdbF7CO+9xpoj5aU2Brj0w==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00njvxf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 22:54:15 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51JM37qO009743; Wed, 19 Feb 2025 22:54:15 GMT
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam04lp2042.outbound.protection.outlook.com [104.47.73.42])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 44w09d4wmg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 22:54:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T61zDU5Zo+ykS5nP3VMPtZ8WxfRZ0PxWZhHz6K/XwzLn8MQ9fLmtAZaq4/HZ3Xy1FpDGcysrbQnzRFmwJybvKC8TfTXowrarzKj4Iaq6qXpzhSc43R2I+szgO5Z338MJRQkyHJacal7/yuF54ioTVjnG0gVnhMXYYcNqWDZ4I/vpRzsfylb7cikdnuWSWVrk51sMWUCmXbCGHNgtCNLux23/SXf7evt9clQpzxx4qj1sZ2iKbV0X0lchBsIon1RsjQmKPVss+vO9T7kpeEAMbevZJvO/vUHCvUYBIjFymaJIKkxYbHU2ZBrjzwmbT9QtL6MF3fQi09gNkma1om488Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MCW0kiqX9F5p6pNDBgbXyflgy1pW2BVjUoJJ/D4kiJw=;
 b=uaxk/AiQj8xsQKteXTQMsXnAZScMDZwbO1Cs37xiJLMphQfQ9cULvp2imp/enXjl01rBixSVpgdr0JjN5IiXn+ReUhOzQRGJlHjITwNhkiDtUL5vTB6B35wmfIhZbvd0chCPS5uu7uDdZo1ck9eN1R9lj7mnzlz8kGXcY8FTfpFS6QuKR81QDETksDjxGW+hyh/9LQVNW7sR1/b+oBaLZ9KwDLCopG1Ho/Lhggboluw1TixQnfNe8VJuu745lfxHlVBlGemIB9T0GwBkG+xe1NflJU2rqOTjJe0n7gaHDapIIQazjDPvRAEIFkAW7yjeFN1DFLBTFMQ38sp/LNOd/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MCW0kiqX9F5p6pNDBgbXyflgy1pW2BVjUoJJ/D4kiJw=;
 b=sTjOhD+A16v/HODq5GqEAM5SwvMv88+XbWOhM4nE/zRTC2tHspIr2HqGyuFwFap8p43YQ0zPvJJrY5ifBglQrcEoI2l3OORkY+pPi/k9ec+XnGdVX6K2SxOJN3Od1CfVcpqdmAThB30gqdl1R4ulvI0Uuh6w8CqFwVWdHpXA7eg=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SA1PR10MB5734.namprd10.prod.outlook.com (2603:10b6:806:23f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.14; Wed, 19 Feb
 2025 22:54:12 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Wed, 19 Feb 2025
 22:54:12 +0000
Message-ID: <046f91fc-dc84-48de-b2e0-9f072283facd@oracle.com>
Date: Wed, 19 Feb 2025 16:54:05 -0600
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>,
 syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
References: <67b5d07e.050a0220.14d86d.00e6.GAE@google.com>
 <tencent_83C97263B064441765B762E6CDD360637605@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_83C97263B064441765B762E6CDD360637605@qq.com>
X-ClientProxiedBy: CH5P223CA0021.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::22) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SA1PR10MB5734:EE_
X-MS-Office365-Filtering-Correlation-Id: ba3cb71b-ee94-446a-250a-08dd513853da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0lBVHZZYnVKUlY3NzRya1ZGRHU0QU1vZXplZlNCQkk1QjJmU3RzNnZSTmJq?=
 =?utf-8?B?aHlsSDhtQ21tdGtBRnZkTkF1UmEvUVNzNXU1Qk4rdFJkNCtGN3ZrckU1eUt5?=
 =?utf-8?B?R2Y4SWRTQTNBbUZ4bmRNZjh6M2RwWXQvNDd5Ykd0Y1BSWVZnTzN1bXlVSHpt?=
 =?utf-8?B?U2ZDQU1iY0pSaENrZWc1L0MwNmNHY2QvdHljakd4MGtjYzNpbkNJTDJrYlov?=
 =?utf-8?B?OVg0RmEyMy92V2tpYkp1endZN2xJR2tIMnN5dG84SEROMzJvWWJRYy9CZVlP?=
 =?utf-8?B?cnJoeUpTVktNUWZQNXVGbG9acDZXRTM2SXRFUU9zNS9UdFpDYzVELy9uUEhw?=
 =?utf-8?B?RXBTN0JqUU1RYnhrWDZuNldoMkxqQTZFOSs3RnFReHh5Ky85djNDRFBraDR3?=
 =?utf-8?B?UjRqKytVUzRVUHRIMUtlUjlOSUIzTWd3bW1kRkptWEhtMC9qS1FWcnMvNDM5?=
 =?utf-8?B?THJZYXdQQnp4TFN1Q3pZc3pwcXRwUE11N2hyRllHLzYrdUF0TVI2d1BnZEVy?=
 =?utf-8?B?cWVZNDNhMkpMOUFVVlBPNHRBVWF2cHFPQmhQZ3BYZWVCeDUrVWxDQzNFaTMr?=
 =?utf-8?B?aUtRZkZhc0I2RktPVloyL2FQMUZDMUIwWndXdkRrVWxzNXA4UmZtSnI3dzFj?=
 =?utf-8?B?eWx3cGY2VmJTNnVTQWpkNzRrZHhoRm5HMkYzTnpqakJ3b3NSR21BVVN5OGRm?=
 =?utf-8?B?M250ajlIb3ZacUhSMWFHTThzL0w0VTNuM1dFMWpTR29nUXVvcC96NTJaVVhT?=
 =?utf-8?B?WXNRak96S1R5ZmxwZ0FRRjhVbGpwMlNpNTJ1ZFo3YjNxVytlY0pyOEY1cjFV?=
 =?utf-8?B?RmVyaGN6R001Rnh5a01kSWF4cHBuZmFLSXh4ZGwzVW1odlJIZmR6bjB3a3J1?=
 =?utf-8?B?U0dTS08xclA0OHZBOFZmN3VRdm1Pby9KdEtseFFZN2hmNlAvWVBYVGlDT1pK?=
 =?utf-8?B?U2g2VWUrVG8wSDIzUnU1V1poTVhxTXVIQmNuZHNqREZGa0NFYmk3QW45SjIr?=
 =?utf-8?B?b01UbmVzU1pabG15TlBjR2lJRmdxZWcySnZ4TDlucm1tMEdlR2lLQlljRnlJ?=
 =?utf-8?B?MW1lMW53T3draGFzbytBajJVeXp0dmVGaEhteWVHL01CUEpuamJGV0JGdHVo?=
 =?utf-8?B?Z2hnN0lZWXRuUjlMQWRpSzE5OS9PWlBMbWwvL0pvdTF6MkpXSS9NSVdQamJE?=
 =?utf-8?B?WmxHZUxZaVR1dERjWERBVUsycURZRm5KcjNmZitaYnBPVW5JWis1RDMxSjBv?=
 =?utf-8?B?YkdqM2ZYZnN5akhUZEpZRHN6VHlzaTc1YXR2NmZQQnFYazBxTm1QUUpnVUJj?=
 =?utf-8?B?R1h6d25hV2tSMlk5Skg2TGZSWnFodTN4QTdpOWdUUGYwU3Z4anI3UUEvc21n?=
 =?utf-8?B?RzNLamozVVRJZnhRbThLekI1b2RBeW9mQXJDaGRtZ0p5ck94UGdPUGJnZzlY?=
 =?utf-8?B?WE5aeEk3cGZCVEJ2czRvUWxuaGJpUGMzb2NlRFYrelZlMTU3STRHUmpiN1d1?=
 =?utf-8?B?Q3JSSW5UandsTnBJWVpiMjFVR1lPZXkzbE9jZ1gvLzVYeWFIQm1RS1dQRGNs?=
 =?utf-8?B?aUhVTldWbHdjT0JGNytMMnhUODMrWkw0MTBCWFg3bTJ1bHg0aWV1SlU0b1VM?=
 =?utf-8?B?WHdYd0w1ZnN2UEM2MGg4QjYwK0NZRzVpbTFBOE5YcGlCTFNjYkdYNUVoVWlW?=
 =?utf-8?B?M2dJcjkwNWRuUW9MblZGOGxJQmxxVlpFYjQyYThnK1ZuMlplc2FpS0xTZXVt?=
 =?utf-8?B?eXp4UXhiL2VlVlEwbXlKUU8xdVJXdk1iTW9HQTVYdVhhS2hQNTByUmZhNXhq?=
 =?utf-8?B?eHJOQ0pQRlEybkplNUVmdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2RUUEVES2xGMVF1d3pOQXhKMFN0aHlKSFB2eklvUmxnZUprd3dDblJEaXlL?=
 =?utf-8?B?UVhNcU42Q1lReDlWYm9qaC9lZ092Z3RzTDRXdVJBL2swRTZqL3NYYUlTc2tK?=
 =?utf-8?B?RVU3MHhxZlUybGpEa0pHaVdBRnkzUjROZ2RwdCtSc2IvV0pXakFyYWNoOGkx?=
 =?utf-8?B?a3M0dlozY3FBdjlwZHVYT2Y1ell4RGtITzNDeEZ0dmJxZCt2eWI2UFhXeGpL?=
 =?utf-8?B?NjE0WHNvSGlJK0NUMFJjZUxLSDFnMTZqSmZVdjc1ZHkxbk50VzRMNVg5d09l?=
 =?utf-8?B?RU1hU0VXWjA0SWxCNmdFK3NncXVDbE8ycFVicUlGbUdFRGx6TEVLaDFZVlEx?=
 =?utf-8?B?eWgybkR1VXdqcUFyeTlSRnF6SkNacmZnSTBrcytFUXJJemVnb0MzaTVpN1Fq?=
 =?utf-8?B?OFBKbE12VVFmb1JScm05RW1QTHZnYUJXMGlCZkdFc2ZIUndVU2pQNXhNcGFl?=
 =?utf-8?B?ZlFJZHRCZW43OGlQb1I3MDdFQS9uNVp5cmthdFhneitoNExrb0U1bkloc0hZ?=
 =?utf-8?B?U3dIb2ZhOG9zaGY5NUFiT2VJNVJjZm9aWDNkSHN3SkNFWWthMzdvS05mYUx6?=
 =?utf-8?B?NS9mR005QnREMFJua0Q4RjkxV3JtbCthRlJtMnM2dTA1ZnVrVjE4bW1QQjlI?=
 =?utf-8?B?UllYWWJRV21KR3hHTUk2NVg4MGx6QXk0ZzdpV282bFV5eGdVR05zS1F3cUdO?=
 =?utf-8?B?R3NnVkRra3V5eEduMTl3aDY3d3E2V3JlQjlTZEZGRUFyQzkrdlo5ZEx2RTF3?=
 =?utf-8?B?b25SSFFSak11dTl4ZlorNE5XcVBvSFNkU1BjT2VRSGJhbnFoNWJDbWNSR3I3?=
 =?utf-8?B?VjRDc1ZMSnNqRmZseVpLd2JNQ2pxSlFzKzVkeFhIWTNBcCtyb1VTRHZlQzE1?=
 =?utf-8?B?NmttS3E5UlRuYStPR0xoQjllTTZHdWRHZElMb2FEcC9qWDRERmIwRkhBUXh4?=
 =?utf-8?B?ZXFDNlkyVnRqRERNNytmek0yZ0dVejZud1F2T0Nya0Qyd1VZVmtGTjB0bXFM?=
 =?utf-8?B?R0RSdjl1cnl0WlNaVUVicFNhUzUvNExzdzNLcFZ1RWt4L0lVMnh6Qm5Kck9I?=
 =?utf-8?B?dnN5aXZqcE1oOWxmTTEvSjlsNHNmcTVXMDhVRkh4Y2t3cVdQOWI4S0ZoQW9l?=
 =?utf-8?B?S1QwZ0thRmlBWGFJUjF2OTIvMnpyRFQzeUVHMTQ3Z3YrbXU1TVRxMjl1UVl1?=
 =?utf-8?B?cXlIT2RmbVViK2hxODZyc1plZ3dUQW0rRnRIUWZQZm1ZTk9MajFLZW1DMGZv?=
 =?utf-8?B?SDNBZVpxVjRlNlQ4TEVhcUFWTllPYVg3TVZ0bmZ0cTkvemJMRGFWSndBM0lo?=
 =?utf-8?B?WmUwZEgzNXRPV2pjd0dUaVUvRlRHUTdoTnBxUWZ3YU1RZGg0dUdXUXhPQ3NF?=
 =?utf-8?B?RnJNbXI3MHp4QkRxS3A2bWdYU25EN21lQVI3YjhhakVHdytUMzVJTzNNS1Rp?=
 =?utf-8?B?djVjbEdSVzRYMHVPTmtVNjNVcGdRb0szZHRoT0VuMkp0ZjQ5QThYTW8zUk5J?=
 =?utf-8?B?MXR0R3NvRWR2VEoweTBaVnRPQmpjUzk1RWVscWZRNCtPUjBETXZiTWthbEh4?=
 =?utf-8?B?R2pvaWNCVVROOGh2a2lISUIydEtWV2g4NFhUQUpEWmgwQTltaVNhcU12NTlK?=
 =?utf-8?B?MHo0N1ExSEpsMnhLbUlZZlVDOGtyVTdKM2Y3YzF1TGRFc1FvTXNSMGVkeHFm?=
 =?utf-8?B?WmU4eS9UNjlvRUxkdkc2Uk9lakRPSHUrNG1aOVFSeWw1SmN1RTBVSTRDblNa?=
 =?utf-8?B?UDhXTGVRTU5pZ0tHc0tnZlVFN2tkWW52VmZoWGtKYXM2OHQ4SzBjNHloODh5?=
 =?utf-8?B?T0pFSHFzdzBoUFJYNytlN2RaMkJqM0Q3WVpnSFhWREUvOGltZ2kzM1BVVUhu?=
 =?utf-8?B?Nld6SW1qTmQranJ3N1IvOXgyWjV1ZHBuZ2VlNDRvQVZrVXNzSkNPd1Fhelpz?=
 =?utf-8?B?ZkVzazZGMTE1c3VtWlB6eHBoOU9mZHE0bXgwMmJzRHZKWlhMTTFlZktQdHEz?=
 =?utf-8?B?SzV1SEVNc2N0S2gzV2J6ZHJsT2NmbHYvSWNSTFJVRWMyeC9ZZGkzejdrNXZO?=
 =?utf-8?B?ck51RXJzcFZjcW0zNjdJUE5OTFJRVGx1OWZLV3RubTlBRm1QdnR0blZka1Zk?=
 =?utf-8?B?M2FvaVhaMEc3ZkJPblNVUnQ4QXQxdmlSY3NVelh4NndLakNsK0pHVzhza0pz?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ebFh2+CqKIYBugNtIbXp4SjxfuGMS2oJIGDxY4zh1rWHmX0AI658WTTi74h88wMKOaFVDnSZUZRgABeaIkWK2p4HpbFdHMNOn6vPRM0C1na9J1x4dBhVAAgt+dAMXq9vkMz5HjTCupopE0YtOrdx/7WKGdk3MA9sueT/iHntJqk0DL7JRb9L7xfbIrt1zs6LkpRnpAY4cT2JMsFvDzdLINAhlkdG5Fn8l0OuOb9lszu1nuDE0omPaEUH78AjgUK6g3qS+WQb/p2iqsFD+tdAeFyFxG3m1rlyIicxLR9Cp3/GSbkLQPPmAHgs6GmPG+SuD37c/oeoS9xijb/ZCdMmqETzpfvs93XVTTFEVD9vd3Y1W2AD2uobslNMtvr46DHED40zHv/gjehla59Lze0h2ot2DJD8h618Q/lYLtpOFgvw0HPuEES+CV1NC8J/92IDmvFN9egPdmbS37XgL/sd9SYp3aVEnOT7hFMxGUR4xNH8vYQ/E2BcWveMjcdyQcyadmkTYEru1YkMvFJkdCWDWiNrjL056a6RdmQiOapsN/YTMClIWsQOEbaCUko94pqQx5/3eUfIzJTUtzD5g5I5qs44vcFBS7O6fpa78UJ4pXc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba3cb71b-ee94-446a-250a-08dd513853da
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 22:54:12.4897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JopSsI76tJT0B5QpIaSidfiFyrRWl44BfFSCDzYFJi+4Cex6N0ThQfygI3OhrSGYfCXvqExmrWxGXo2bqbT1Vgr/lvJOPFYV72gK6Dg4Sbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5734
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_10,2025-02-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502100000 definitions=main-2502190168
X-Proofpoint-ORIG-GUID: hHvApxl6-Dp3Rq0ZbhIlEhEfUFMWLWe0
X-Proofpoint-GUID: hHvApxl6-Dp3Rq0ZbhIlEhEfUFMWLWe0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/19/25 8:08AM, Edward Adam Davis wrote: > syzbot reported
 a uninit-value in diFree. [1] > > When print_hex_dump() is called to print
 the first 32 bytes of imap, the > first 8 members in struct din [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.165.32 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tksxX-0004ab-IO
Subject: Re: [Jfs-discussion] [PATCH] jfs: set diskblock and maxag to zero
 when creating imap
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/19/25 8:08AM, Edward Adam Davis wrote:
> syzbot reported a uninit-value in diFree. [1]
> 
> When print_hex_dump() is called to print the first 32 bytes of imap, the
> first 8 members in struct dinomap are the first 32 bytes of imap, because
> in_diskblock and in_maxag are not initialized when imap is created.
> 
> When creating imap, set in_diskblock and in_maxag to 0 to prevent this
> issue from happening.

Thanks for the patch, but I received two patches to fix this today, and 
I am opting for the other one which uses kzalloc to zero the structure.

Shaggy

> 
> [1]
> BUG: KMSAN: uninit-value in hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
>   hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
>   print_hex_dump+0x13d/0x3e0 lib/hexdump.c:276
>   diFree+0x5ba/0x4350 fs/jfs/jfs_imap.c:876
>   jfs_evict_inode+0x510/0x550 fs/jfs/inode.c:156
>   evict+0x723/0xd10 fs/inode.c:796
>   iput_final fs/inode.c:1946 [inline]
>   iput+0x97b/0xdb0 fs/inode.c:1972
>   txUpdateMap+0xf3e/0x1150 fs/jfs/jfs_txnmgr.c:2367
>   txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
>   jfs_lazycommit+0x627/0x11d0 fs/jfs/jfs_txnmgr.c:2733
>   kthread+0x6b9/0xef0 kernel/kthread.c:464
>   ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:148
>   ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
> 
> Uninit was created at:
>   slab_post_alloc_hook mm/slub.c:4121 [inline]
>   slab_alloc_node mm/slub.c:4164 [inline]
>   __kmalloc_cache_noprof+0x8e3/0xdf0 mm/slub.c:4320
>   kmalloc_noprof include/linux/slab.h:901 [inline]
>   diMount+0x61/0x7f0 fs/jfs/jfs_imap.c:105
>   jfs_mount+0xa8e/0x11d0 fs/jfs/jfs_mount.c:176
>   jfs_fill_super+0xa47/0x17c0 fs/jfs/super.c:523
>   get_tree_bdev_flags+0x6ec/0x910 fs/super.c:1636
>   get_tree_bdev+0x37/0x50 fs/super.c:1659
>   jfs_get_tree+0x34/0x40 fs/jfs/super.c:635
>   vfs_get_tree+0xb1/0x5a0 fs/super.c:1814
>   do_new_mount+0x71f/0x15e0 fs/namespace.c:3560
>   path_mount+0x742/0x1f10 fs/namespace.c:3887
>   do_mount fs/namespace.c:3900 [inline]
>   __do_sys_mount fs/namespace.c:4111 [inline]
>   __se_sys_mount+0x71f/0x800 fs/namespace.c:4088
>   __x64_sys_mount+0xe4/0x150 fs/namespace.c:4088
>   x64_sys_call+0x39bf/0x3c30 arch/x86/include/generated/asm/syscalls_64.h:166
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
> 
> Reported-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=df6cdcb35904203d2b6d
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>   fs/jfs/jfs_imap.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index a360b24ed320..ff32b614a09b 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -134,6 +134,8 @@ int diMount(struct inode *ipimap)
>   		imap->im_agctl[index].numfree =
>   		    le32_to_cpu(dinom_le->in_agctl[index].numfree);
>   	}
> +	imap->im_diskblock = 0;
> +	imap->im_maxag = 0;
>   
>   	/* release the buffer. */
>   	release_metapage(mp);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
