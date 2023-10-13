Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF0D7C88DE
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Oct 2023 17:39:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qrKG9-0008H6-9y;
	Fri, 13 Oct 2023 15:39:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qrKG8-0008H0-4B
 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Oct 2023 15:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DDCO22zokbP8YsOPxlfcowZ/G0SPT3tGik4z9UOhqXU=; b=a5dMpZkQfmLzTdkIXBouoIgL6M
 1OZDcL4edHAsVURDFhAEjJIU1yRXto7sFGqZ1nX3ydKFAWH2MxV5HlAwCZMYNTRoeAMXKjWlqKofZ
 mlD2Pv8IwUJCs99qTyvV8i5FfPT/am48sO/eZz0C3L2v9LraWx3EQ2be+TR46wS9kK3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DDCO22zokbP8YsOPxlfcowZ/G0SPT3tGik4z9UOhqXU=; b=OsG3tIL+k0iRtlCJLPofXL0htT
 dp3JzcLU3WSObyHuKphiPcLN/tg0QxSWZ9AoQVGm9T7jdP6piya+7auM5JDaW0w0x5XahnDFik5Gb
 fmaY+PvUeWZjI31rBtw1SE9GCZlFBeWTa5f3LFvhx/KoUqg3/xkt2EF3fNOQGq519bys=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qrKG1-00E4WS-75 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Oct 2023 15:39:26 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 39DE0ppn008985; Fri, 13 Oct 2023 15:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=DDCO22zokbP8YsOPxlfcowZ/G0SPT3tGik4z9UOhqXU=;
 b=p2pCFuOZe6D+cGQnYiviAV2CU9lyRQ68s1QF1QUbGCoEAZLa8WWE9xuWhl/VbdqpVJ96
 ULESH8hDiuxuy8qqSB63CL4ffr0+4fXm2VKNej6b60EuP/3G3FhyRvJUBe7TP8uwk89F
 WY94HxYHcO7ifXBRwVW8avBP+UX3mb0oFc30RwNLc40WItrweoRrJP05/oTcKxpIigzm
 e65ha5mCidByJTbipg6c95k+C05o9k/kxXpfnMVFXXoHRwFu4UoNjCbxjLN8D+JrWi1J
 iH1tawP34GF+YxhWK9CQ26jO5576114d5bXKimSYFOaOlSfYe2FMDaKlLYso5SwEHxnv TQ== 
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3tjxxud945-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Oct 2023 15:39:13 +0000
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 39DEt0rt006006; Fri, 13 Oct 2023 15:39:12 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3tptcshggr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Oct 2023 15:39:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SPW9U/HBr+EWPRNCyL7r9MCB77NuFiw5KOY7mMxVnD9c1t8PQZfPIVj/ek/ODo++RqSMIRHmo/Cx2GPj+mMPQ08NxBIaNrakg9aZBVtqkDvl4N4AC61wc5z+Z5ycMlPP4I0YleyZ1Xq7U2Xq11YTMnCMZ+pQ8MUVsMGBjogq7qOX/wRv1jJT+M75VZR9V3DfqiwvNQplx1o9m9rNJvRCWtbSzCUimZlx+wxw8PjX07UyilijM4XnHKAhkeRYu/20y+Pr2ZL3t1ng+VmSsrTdrqN0bbwQyspZ3KVh5NJsEdDJkNOu9nveJqsJJsNAMJ9zGzG6//L96a6Yos56LIFV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DDCO22zokbP8YsOPxlfcowZ/G0SPT3tGik4z9UOhqXU=;
 b=SG+FsxYnVj+Fg7q1XjITxdRvoWTnCFkoIGR0AGYz38kJfKvMhxML+2CHk2MdOovEmyFEEwQPdZJ6ZWNjjS3t2Q+58bTmh2/J6qVznBW3kcDzPjBJMMObC+SlKYJAzKwOMbJyiwGbvrVlxn3g21yIQezshdDnC8EtRoyzBSGACre2I7h70wfpQuvEup54UllHzGkrc68oRRzlDzqdbZ/Zg654QP+5WvyV7nV9Hs1YOSxlI0MuJHUaDqIthCFM7kTUdV86kM+Pj7OQdGacw7S7kK36bK6mN/wdXUvo7qA+jyGS3OWRtR9wYIe5M9mSP/0ymtQiVrCbht6BGnEwwllFbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DDCO22zokbP8YsOPxlfcowZ/G0SPT3tGik4z9UOhqXU=;
 b=EiV+tve/i1QEFZk3VvQDkCAaflBBc0mHd9FRCYJhPUTIFR3JHBp/VWiUbKGOrrUmIU59QpyC7JqUA4+CvOmD5sZ6ZpAyHH0FA/N9frnrRcxJLyH+H8wzpdyLlJqU/YSaqK8tRwP9lVuWZknsxTnpiCaj1RCD3e04NxfeE2qTQqg=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ0PR10MB4592.namprd10.prod.outlook.com (2603:10b6:a03:2d8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Fri, 13 Oct
 2023 15:39:10 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::a946:abb:59d6:e435]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::a946:abb:59d6:e435%4]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 15:39:10 +0000
Message-ID: <9ec523de-3f05-4c4a-8cd6-7e002f80779d@oracle.com>
Date: Fri, 13 Oct 2023 10:39:08 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Manas Ghandat <ghandatmanas@gmail.com>
References: <20230919155542.4354-1-ghandatmanas@gmail.com>
 <423182d1-3d75-4a73-9011-da24658a40cc@oracle.com>
 <3d4e0f62-35bb-4b18-a64c-191c88415032@gmail.com>
 <52616ab2-6f8a-4313-a687-91a8d1081c8b@oracle.com>
 <4266e5dd-39d8-05ec-d420-4f4c78c5f016@gmail.com>
In-Reply-To: <4266e5dd-39d8-05ec-d420-4f4c78c5f016@gmail.com>
X-ClientProxiedBy: CH5PR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:610:1f4::26) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ0PR10MB4592:EE_
X-MS-Office365-Filtering-Correlation-Id: fa11a852-851b-47e9-83bb-08dbcc028b4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JRk+qAZz3q+cp95RaFrfZGZDjY2qY+AahR7kUieV44VmeTfOsUT7K9Wm90nJpsfOcycR4uRPVR/kRV3s620y1bPcqO8NR330CbBBzfcSbbrb9UzXsPhSg20Ry+7w60n7avPUzulXT7sa01ZXAlxq5zdeG3PdHLRFD+5TJMGBO1oE/fk9smJ2XJlZJxfo9hI1AF+3lMZjESdM8dVNsbvS9S7+nR4C8s+eRm11s7z/E1sr3x9dBEKKPysFcOcOknGnV12+rmscKj7owk9H2sS/R7cppEuAedOCdDVtAU+xGkHOOK8TGQzky+VpHt7ISYIeGWA/UuxAFwpXiwZlyiPMVCL+HlAVu+7+/XlMB/gBt3p0hBsUxlKkBoB8dYsrErl7fokTLMsfKMe6ThT1HZ3MqbDZ0YYQMIDm6Jd9fzhO4eHMQI9/S5qVveTb15b5PaTp9IZZw5RAdPq7s0MsLn2yLLhY+F1LCTHZAfZdxJJxXaKrCGk7bUZSrkDseBjhq8XSSFoqCSJbBcrFX2buKZTYITWO4poLMNCueKRuOYvw+3VqnsahvZ8HBolhSPL2UyKtI6BCZOzFT7i3o22NRR8deDNyd9Hchstsrv/Z6Zwr+p4ToQ9CS19mPNIe2as7OW5jgr7j6ZFmOb3eu5ZkNTE+Zw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(376002)(136003)(346002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(8936002)(44832011)(8676002)(41300700001)(4326008)(5660300002)(2906002)(36756003)(86362001)(31696002)(558084003)(38100700002)(26005)(2616005)(6916009)(316002)(478600001)(66556008)(66476007)(66946007)(31686004)(6512007)(6486002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWxwZkZlcmc5UHdjUm1zajlKNkdsS3ZSbjZKYWZVb1ZlVHY4Z0hnUVJBNVdP?=
 =?utf-8?B?RXRkOStsTmoxVHpwZjdkUjBIdldkSGVnaTM2M3N0c1lMZ0lWRzFVcEN6ZU5Z?=
 =?utf-8?B?Y2JrMG91WkZ2OW1QM2RENUh1Z0o0ek5EcUgzT0pFLzl1a2gwZHcyWlBiR1dw?=
 =?utf-8?B?YnpHclRmeDFBSS9oZzlXS1hrWlVBNHZ3bjNXY1dLNU0rbWJkR2VoWER4Z1NI?=
 =?utf-8?B?aGhjRnZ3d04vRnRJQ1Y4SCs3ekY1VVArNDdhRGtPSVVjYWl6RGRUZ2ViRUpr?=
 =?utf-8?B?aWNveURTUkdpc0tBVUxVVTBOQmVhMjgyRk1ldEFBb2F2dmwvK0xiTzNIUzhI?=
 =?utf-8?B?ZVpIZGQvQ2VBd1huNXRPVEJaR2JQVWtFekowOFNoYVhEWVNYWVovUittSSt1?=
 =?utf-8?B?UStHdGZWdmtEVGgzeEl2RzlURXh3RjEzTWdSZkhrYy9seHoyZXZSdXVkT0NV?=
 =?utf-8?B?MWc0ajZyTmI2dm5GY0N0S0tlYmpSZnZubjZianNlL3dXWjNMTEgrM3BVbzk5?=
 =?utf-8?B?L3Z5WlVwSUZQdmlvRnJGWEk5ZEgvd0RoWDN5YUZ4blBUcEZVOHhBTlBSOExC?=
 =?utf-8?B?cUd5dndBVnU4UXo3N2tzNmVpQ2h5bnN5OTgrRUFLMHEyZFJ3bTRrcDZNVnRX?=
 =?utf-8?B?YmpSU1BYQ1V0TjB3bkRDTkVFUDBEcGRuT1lHQVduanFiOTlYRWhhUFVuUlYr?=
 =?utf-8?B?RldoK2cxN2xqR2pMUGtrazh0ZjdkNlpXYUZEM3hvK1c0Z015TUtXeWlvZVM1?=
 =?utf-8?B?em5Fd3VBQjd6QjFONTM0LytVTHlQZko0NjhTOTRmUWxKKzZybnJnTzBDMlM1?=
 =?utf-8?B?WjBSRjN2eXM0dWdraHNrSytQaFpJNlpjWE9kM3RTKzVCZnVzU0l0WWZadng5?=
 =?utf-8?B?Y1M5REdoN1FySXRGSmUvR3RSSHhHOFM1K2pMa2FLd25VbDhwNVVyNVRpdytP?=
 =?utf-8?B?Mi94YWltQzZET001Tm9hNk4ybjNpVEpiVWpnaXlKUzVPekZ4Tmt5Y29sYTk1?=
 =?utf-8?B?bWlPZ05hbEsxSEtQbW54ckVWMkM1YWJmVFNkR1ZLK1pCWXNLLzRMTGoxbWNo?=
 =?utf-8?B?Yy94T0RNN2lhUTRqWFVFTFlEZm9YQXYrQmZTQm95SE1NL1pGNXFYYUtiZnlS?=
 =?utf-8?B?RFRzWVhIMjdVOG82Zk40Q00wcEhJOHI0MTVTbUhxejRrU1ZiWkRob2oyaXh4?=
 =?utf-8?B?Rmp2R3dJTFBBd0pHYzdCZVlQMmhubFJUMmxSQlNWV2lYZFZMeTJnV0NoUStm?=
 =?utf-8?B?czkzT2VPNThmSHZBanhVZzlzNzJHTDd3QzFvVmRpN3Q5M2FtazM4L2NxM0dB?=
 =?utf-8?B?UnJkbVVNY3gyc0hiTXhVZFpTbURFaGhQZ3YvcVQvdDdBNXdlb2VhWk5FbVBW?=
 =?utf-8?B?Tk9ZMnhoLzNiT3p0MWxyajVpUFp2Q2E5Y0h6dnh0SGFhaVR2TFFDVHRVM09O?=
 =?utf-8?B?Z2Z1YW9uWWVGbDR2bGJVbzBSRnYrWHVGOGkvRzQwQXVuay9UdkNxd3BTTjlW?=
 =?utf-8?B?cW9BNTdRMTZUUEg5dXlMd3dNbmVPZWk1d084eWd6bzU1dmxib0piZ1RsVld2?=
 =?utf-8?B?VzQ4SU5XZ3NMS29rQUlLZGNaNTIzR0tZdUgrZk5KRGlZRjZXMGhXTENIaGFr?=
 =?utf-8?B?QTFlNEFIblJVTXU4ckZ6Z2Z3RGJRTGJ0WEVPVXpPZ2ZvQjQ4MkRvS2RVSnhl?=
 =?utf-8?B?bWNoWlhYSkZRMTVHbjhmTjdxZWxjOEZpa1NSakpNRmYvcnNiN2pXYm9LRkxE?=
 =?utf-8?B?ejI5eTArOU9tcmFrYlRJMGNZTUJWSFl0R3VDeDhPV0tXa09LRmlXbzhCd0xl?=
 =?utf-8?B?NFdQa0QranFacXRadEtRRWN6ejdWRkY0VlUweXdjNldvL3ZGMUZ5U0Z6RmZx?=
 =?utf-8?B?YTFOQjVlQzhLTlNhVnhDNkswRXkraUY0QWtSYlhSbnc0dWsrSUtSeWlUUTIy?=
 =?utf-8?B?cE1SK0dqdncrN05ucVVDYkcvd2FqamVCeFowLzZYUU1ySFVQY2FxUlFlczd2?=
 =?utf-8?B?NE14SWZEcVZBdllUN0dqTmx1R0dkVXZSV1pwZXhZa2NXbWFUK2lXNUxoVEIw?=
 =?utf-8?B?enJBTDVlczRzNGJZQ2VaSjVVUkQxVGI2L0tXc0ZDTUx1eldwUGVGOHlCR0dl?=
 =?utf-8?B?eUV5ZHgyLzdTRzFneVRQWVZvbjYzcjA3SVZpVFpqOGN6MXZOUTF2VzNKdzg3?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?Z2ZXbVprK254SUFQamVWeUlNSmRDRUkvQWt4ckdRbXB0NnFnTDlGTUxVR2Ja?=
 =?utf-8?B?T1lxaUZnRTdOYWhvZys3L3c3YzhZeTdZSW16WUFITndQSi9hS0Q3UnpzcWtw?=
 =?utf-8?B?NEFVTXJpMG8xWnVvUlRaRUd6cmgwN1dsS1plbXBTb2Z4K0sxUzZDNyttdlhx?=
 =?utf-8?B?RWU5bDBnUlJCbzM0T3VRUEE2N2Zrdm40dnhjZnZyeVA0TE1FZHdhR2tTQ0lt?=
 =?utf-8?B?dGp6ZVAvWTJsWFlWMGRHSEI0ZUlGRVd0NlRGb0ZhSWJiUnVTZVpvRmZ3ZytL?=
 =?utf-8?B?eTdtTGRMOTcxeDd5REUrUFcwQVh3ckd4VEVFT21pRnFuQzNWVFpDeFZFZTZJ?=
 =?utf-8?B?a3U4SXl6RVIzTFBxeGwvS2pndFoxcnc1OHM1QUgydHFncWUyZGJvc096QTlO?=
 =?utf-8?B?Qi9Gc1ZOUnFtcG04b0dzcWJWUkNRZGlCdzk1MXFSam9QUlY0THEvZzFiaHly?=
 =?utf-8?B?d0phbklVTDd1eWZTMGxHK0FjNU9YOXFPcHJ2YVFDcW13cVJBNmdqK0pWaXBS?=
 =?utf-8?B?UTM5VjZxb1hIOTJ3MWV3NjdhVFl6emE3Rm1RTGNhUWJ6V2Mrdkh3TUlhV0RG?=
 =?utf-8?B?eDk2a2xFeGxZQUVOL3lMR0U4T05DWkZrako0Y2pLR2dwdDkrUFZtKzgwN3Vp?=
 =?utf-8?B?dUFoalBqQ2V4Z3RTUVR0RHQ0Ykx1S3h6eWYvWFRtWDlQTTZINHk0RWdtcVhj?=
 =?utf-8?B?Q2xLdlY1QmVHZWdXZkJVNGhuZU1WZ2tsbU1obGdyYXl5TFFlQklHS25ZRkFN?=
 =?utf-8?B?WTVlbk5wejA4VUM4WjlBZXo3cjFZWFliT01sU3VseXl3aldYRXFTZ0JhemRW?=
 =?utf-8?B?VlNKdUtuN1FtTFZhYzJ2ZUptNXhINldLMUI2VEgrcTJXZW85MzYzT2x2MWRr?=
 =?utf-8?B?Y0FHUzB2QThaOXZscldiTFY5bHlZVmVWamxnMHdvaXR0S0czdytKNllzSGZw?=
 =?utf-8?B?Mm5BbDBydVBsbUg4bHZTcDRwQnJuYXVUUURsN0Rjazc2OFJCa0xBNmpldDNB?=
 =?utf-8?B?THBQV29WSzhmU0pMaklROGZMblNydU9tNWlYa0VnQk9TeWI5MWVjVS9DWVNV?=
 =?utf-8?B?Nitvck5LMmM4elE3RE10MWVlYkJoaExtZWpScUlUNjNtOTUvMU00QWpLejZY?=
 =?utf-8?B?VzlGV2lPcklsbDd0NEZ4Z0wrUVhpZVRHYWRsZ2ZGSzhYd0dRQktnU0cxVkNH?=
 =?utf-8?B?QlNPY3lhcFVuR0ZqemxKWXBmcThEb3dQdTkxbkdwSjJYMzg0Sk55U3pvRjND?=
 =?utf-8?B?VnFRNi9pL25STG9HbnNrSm1KQnk2WUdETUxoNDNCb2NZVldXbzNVLzFOMVFY?=
 =?utf-8?Q?8vkDWCeqzCh1U=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa11a852-851b-47e9-83bb-08dbcc028b4a
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 15:39:10.4605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P3FAGwxLVSytoMTYcUmyPuVE2CHGfL+SojZBm99mdaw7rAjEqXZmAxm8pU3c4LsBtxXDl24hoGzKAuipYcHD5YnghhRsDheDMO3yXWdwmNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4592
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-13_06,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=608
 suspectscore=0
 malwarescore=0 adultscore=0 mlxscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310130133
X-Proofpoint-GUID: Y6IuO2eUDVl5AH2_EogxGtY1J0jfMgZ3
X-Proofpoint-ORIG-GUID: Y6IuO2eUDVl5AH2_EogxGtY1J0jfMgZ3
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/13/23 4:49AM, Manas Ghandat wrote: > > I tested this
 patch and it has not triggered any bug. > Great. Thanks for the help! 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qrKG1-00E4WS-75
Subject: Re: [Jfs-discussion] [PATCH] jfs : fs array-index-out-of-bounds in
 txCommit
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
Cc: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/13/23 4:49AM, Manas Ghandat wrote:

> 
> I tested this patch and it has not triggered any bug.
> 

Great. Thanks for the help!

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
