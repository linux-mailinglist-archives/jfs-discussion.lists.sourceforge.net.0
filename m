Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E37796D016A
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 12:38:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phpfv-00044A-N1;
	Thu, 30 Mar 2023 10:38:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=Johannes.Thumshirn@wdc.com>)
 id 1phpfs-000443-24 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P8SiEh8eP+HAricZ9V9i1DTo/Lnv78MIyKEP5ZWHeYE=; b=eqGtGUvk9m5OOWBai474Ja3FCu
 xHI4Ao9xQMmkJKq67zObEBswo0kcwcsMsVLTn/qGtg5KLSlpSRbFIuu/dqX3UqZ/gorlGpl9JFwsH
 6+SnczpCWKMhBz/5wU9uOj4nS+qGs/AC8oOONEYn9dgjArB8MDXJqkvIpdBayMMfVCU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P8SiEh8eP+HAricZ9V9i1DTo/Lnv78MIyKEP5ZWHeYE=; b=avV602Vq2tnGrrzXR7b2FxGguS
 23KEr9UX3ETYnsewWhLhkupeSaAEcxCkWcQ6PGGTpvEEJmrmX56xOnCU9gmj2jTAIVxSRtdEMKEj5
 6Ohdd/PrgDYE5BFCoCohdHRTCxrVtwdERKjtZ5nXr2w/wfWBMMFG6WZPuSdBbLG5ryB0=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phpfj-0005rN-Ae for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:38:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680172703; x=1711708703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=P8SiEh8eP+HAricZ9V9i1DTo/Lnv78MIyKEP5ZWHeYE=;
 b=KRYUMrBhIyMQwcFfAsA4LgvMiBhKD5YjMPQbBsLNR56HP89/sF6KwBED
 8voFJekYpeIsF+I9w0lQd96iXCur5JYEczCFxPvtxX+/y4B+K4yR9evT2
 Dhhq5Z9GJMZQb3GYZAkPAmFh0/PEvkJ6h69H/K4EhmxIBVVhgkaAvd65C
 1Ae/ACyXrGK32pCej9tSgAMeufYH4bUM+QupCNmx82xMs/zZugFPDSXNO
 lGqgCbctYqBbS2i49yRYHiuRFhzwTZemJ8AiBoyB8zIDEbJejHTwG3J1e
 sZqSO4fqyYyKBgnwEMkOsw+phj2rB5IOGlz/sPHRLM6/cGuznejowTy23 A==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="226872014"
Received: from mail-dm3nam02lp2046.outbound.protection.outlook.com (HELO
 NAM02-DM3-obe.outbound.protection.outlook.com) ([104.47.56.46])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:38:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oNJd3F1FtnPHRtk5ITIqiFozf8LcgJEJbJyReIGyYqeQhDwHaHobkQVceZCIyRh52Oq9F2UOnI48UwdMeYsQ4LL+R7oQhSq7xtw1CoZJBga8ABVhn1hkuqy78ePf6zJeEiBh9Z53DcI5Gh6GqPu8h+SZ6iJG78/fu+iXNkrNyXu+RCvkhaOIV38KihsyH1gLBFx7v9Wzuzwh4VVHxMkdfOLYy0j/mLbdY1YsYcRPVK+XIWUXj353r0EctwoELViOQRwINbkHKSFn2sGkAWey/J5qSIIBkK0lM8AwULy+1Uj6lDsA/iObiOhTQ76wI7jOVid07PTfdZObU3EmJU+V/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P8SiEh8eP+HAricZ9V9i1DTo/Lnv78MIyKEP5ZWHeYE=;
 b=nfqQGDZmVVDlYnY7xat0a6tx9iKOs7UahfZDvWAh+A7lXwGGl1A5XUV2iPl0id/WugmJpUbtbzdNlV7qnEltRv3oyQM6hy8ymbc2jdsYaEvMhOs2ZzaEzIKseLEz58coOq/S6xI3z5O1nNiEYb3OXIRADCWIseNHVGbnmLF95CgLj3rGx8nCccue5NsrW15RtaAp1Dkd1VuRiwgWJNkqP1tt8oKOgvx07qSmT0OnlG4nT192GQ3G/dTuXCIxgdHSxU58eQ1ATdsmAHrAKgHt00CMoSXvSshcZIUf76+ON1NVd7r3J1aWzCDxVTaR/w66ZPDVwXpiFUP+1/49i4YJ4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P8SiEh8eP+HAricZ9V9i1DTo/Lnv78MIyKEP5ZWHeYE=;
 b=wlLP8Tw9Ji6hAujTGpaSK+PkKIJHTBnVb7GdigoJaf9F5J8BgziFX949F//bNaPOXBYI+m1TrZ38LX6QqltIWBOPDb5zsEPJ1T0kQmoYTVNX8DAFlK7xxg9ifak94H1NfoZzc+R0QAr1VmjFbWjwVd9w9xOMfoXf7z3USjizDiE=
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by DM6PR04MB6363.namprd04.prod.outlook.com (2603:10b6:5:1f1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.22; Thu, 30 Mar
 2023 10:38:09 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f%6]) with mapi id 15.20.6254.020; Thu, 30 Mar 2023
 10:38:09 +0000
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>, Jens Axboe
 <axboe@kernel.dk>
Thread-Topic: [PATCH 17/19] md: raid1: check if adding pages to resync bio
 fails
Thread-Index: AQHZYmDr2VjhRrc+LkyM5ClXFQvgnq8SbCKAgAC2iwA=
Date: Thu, 30 Mar 2023 10:38:09 +0000
Message-ID: <f636e8cb-ce48-34ff-b60d-deed68cbb3c6@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <e2f96e539befa4f9d57f19ff1fc26cfc0d109435.1680108414.git.johannes.thumshirn@wdc.com>
 <7441afa8-3e60-79cf-66c7-4ddb692c1bcd@opensource.wdc.com>
In-Reply-To: <7441afa8-3e60-79cf-66c7-4ddb692c1bcd@opensource.wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|DM6PR04MB6363:EE_
x-ms-office365-filtering-correlation-id: 56edfb47-09f2-4d0e-056d-08db310adaf3
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +C9QrX112ovcAntQrpq3RR46VokdCM71ViHZY9U+r4NgN2GCKC8AAUKF5DB3zToaLe1J5RBaserDbY/ct+Eu/FCyuJbqDfRLnNUCVeFLyeMhxIYS8NAdsuod8fgyJl/hIgyjfNXdYntdXNk3CfzyJOp8flEMRiUypwwXuMvQ0zo6w9tAj8SGlJD05mZKDkLa6K2Zy//PeKnn5xCj8PWX6QQQT1yyt7LbQq4jUyb90DACTYoUWS0NnWQZy2ZbBdkC6Cvcyz2n//ZoRHa5uLRJ8ja0y7P1+k7OZDBOpI24Fjs4gYBK7JPK8u48N4kSaBWXve83WdKIR9jfPPAM03F6hZQhi9nfVmeiPCI8g5QMfvwl9jSq5J9h42CrVUyutm7Y8xhbcSsxdYkytkg7VO7c5l9TohKTf9Up3+KKJ/UFfGCHzATplk9GrxXILO7CgoOxv3CPatPXTt7TIWEJzpOybg/c5Z6o9FFLYinmm4n7bPggEot+hI6HVvSGAoq1Fby6r6VR7GtRNoG4IOrp1l2QyB6qexjeOT+N8YhKfRiUG1DWos/uJIlGmwUxWA1iS7CO1CiQmURHS8/8aovCCLJ+A+V+yUjlOZbXKXfIspqFCDKzLBMae2EK41KZkQM2+xRqHNqYtJwkjSTRKpQHfwUAe1EY3ojbmqD8bo2Mie2h6iB15Q+RooRE4/oNQuiszeKf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR04MB7416.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(451199021)(2616005)(2906002)(26005)(53546011)(6512007)(6506007)(478600001)(36756003)(186003)(38070700005)(71200400001)(110136005)(122000001)(8936002)(66556008)(66476007)(66946007)(4326008)(64756008)(66446008)(76116006)(91956017)(8676002)(31686004)(316002)(41300700001)(82960400001)(54906003)(31696002)(6486002)(5660300002)(86362001)(83380400001)(7416002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEw1a09Ocm1BV3hmUFVwTFZUNXJVTW14cnJaK1V0N3hjc1ZQQy9oaEtCRTJI?=
 =?utf-8?B?TnJEdEZvL0hMMTUzejhaekxkOGhNVWpDK2RlTVdHU0Fxc1ZQb1J3YUtJM0tp?=
 =?utf-8?B?Z050SkZqNE1BTWVXTEpjbEhLek84c2FEYkRGVlAyc21Na2RET3hHVjcyaFQ5?=
 =?utf-8?B?YlB6WHRKTlV0ZXNhU282YUs0Qk53ZCtqZmpJMkNlOUtwZXdTZWJWOVJ1aUls?=
 =?utf-8?B?NWRiV21qTmlYNHJNUlpvKytCNVdudjJsM256eGNSQWtHWmp6ejk2Y3k0bW9P?=
 =?utf-8?B?aTZZbVNzeTF3UUFZN0Rhby91bEVpUkpQdmY1bXlMVmM4NXZ0Y2lSTXZtZExF?=
 =?utf-8?B?Tm1qRHovSnZJNG53S04zYWFvVEtQWWNOekxPQ0RLT0hGVDV1VjFobFRmNGUr?=
 =?utf-8?B?TWNYVmdZdFFZbWZWZzk1MEFMZUdiZllVSi9wa0FpdkJodlVlTnBkRkl4RDkx?=
 =?utf-8?B?eC82eTF1UGtnODlPaG1YUHA4ZEVXT0lnSFU0QjBzcEIwZ1N3Y3lvVHlxUVZs?=
 =?utf-8?B?aWNTMUVFaEM1NGxRWXJsc2VUNm9peFJubFVXWmxYSDdsMUcvdmZaQS9WcTNG?=
 =?utf-8?B?dHBpaXRwR2RIUitRV0NCUFZmYWVNZ2tUTkhmRmJQNFdxaEJQcnlOTFNHS0pn?=
 =?utf-8?B?SDJxSkwvVmpnU25wRGRBYzd1TXpnUHZqYW0yb25Gd3JpWW9DSHBTamFubEgz?=
 =?utf-8?B?Z29pVFRDQ3pPNExXanlVdXd3Y3VXWTJpdzRiT3lmZVlvcFh2dXNEOURKNGhT?=
 =?utf-8?B?bndSWEkrRFVCWnRGNHpnaHl5Z2ppQ2wrSGdWWnFQRjFKVnZmMm0wVDZWVURL?=
 =?utf-8?B?Vng3WkwvRnRNT3RrVzNDVlppbVRRYU5VWllkbURQbFpxa3A1WkZkWUVYbGht?=
 =?utf-8?B?UUxMWEt6cklUVG5ueS8rRStMaEtpTnF3Zklpc0dpMkpZQThJYnFvVTdZTXZp?=
 =?utf-8?B?RVVJRitsNG1zYjBBUFBES2ZkazRjeWZYNFVRbTk5eldnRmlLdW03M0lmaUVu?=
 =?utf-8?B?eWFpRkNtb0d4Uk5KWk9heFJXTFk1djZkZlJ5V3diZEhoR3BZOXhXQ2xsMGlG?=
 =?utf-8?B?Y1dpR3c4WExxQWFTQU5CaFg5aFFlY0R3eFdFaEcrQWRzQ0psUitDcjl4NG1R?=
 =?utf-8?B?RTk1MTVCNllzMzJsOWtKUzBXYk9zdjJ5VGgyUStWbUluNnFnbW1vSEJuamRF?=
 =?utf-8?B?R3VhZ3RndlFIOHdnS3J4SktNRzJBbGJkdm5YMVRKVys5QWozeCtqb0ZublRV?=
 =?utf-8?B?anpLdk1MRUdvNlNFaGw0cDJQZFN3OTM4SjB5UEgwbjdUb1JieDd1NTJuYWxD?=
 =?utf-8?B?ZmkvVjZISGZVWmhmL2NhU0VwRllpc1lBSnl5N3NLSFo0TmxhYWFoMTNadEZB?=
 =?utf-8?B?YzRKY1hsc1d5TERFQmlTZjB5NlFuZTNaRzY5VE5PNFdSdmo5WURmbUtHcjVs?=
 =?utf-8?B?bTRLSG5obHJSSG5XblNLbkR0Qm5CNEFoUVNKaGt2WnFFSHp1eU1pa2Y1WHRj?=
 =?utf-8?B?WmFrWnJ4elRMd0xyZnVGN1oyUW93eG84ZXVVOEpZQXpoQmlnVllHY21jLzdH?=
 =?utf-8?B?UXFCM050NjNCb2ErQU5PTFNNS3BvSnJ1Zk0xaEw0Vm1UaWxBWmJZQ1ZBeHAr?=
 =?utf-8?B?aUJDQ3l4bnBOU1RvU3BONmVRSkl2Y0ZlU011dGlhM0VWZ1c2THY3YmJyR1ZM?=
 =?utf-8?B?ak5hR0E3SGxXVjdweXUwL2c0bWsxSjJQeUJMTXREa2U0eGtNcTNNUzFWQWpx?=
 =?utf-8?B?V1NrZjdwTGs2RkNEaFJKUWRlRUw2M0cxVUZkdlQ1cEJGZnlBdG5tbzg5SGFO?=
 =?utf-8?B?a1Z6dzNnVlZ3UUdRem5MNXlWL09iZ0dVVkdTbXhINkFadEZ2WFVmYzM5NGlW?=
 =?utf-8?B?VEhBVzJod0paTm1haFJISUdCTnBkc2NhY0lnbXZ5VHRjN2xxd1cra2pvVmZy?=
 =?utf-8?B?aG1xQzdrSDZTdFcrNWpuLzdCV0w2Z1hTUmdIdGUzNlBMSVdnL3RqY1dhVGVN?=
 =?utf-8?B?TWFRNTRqOGxjRzM2d0J4Uy9oMDQyVHlVMFBVVzVMYVdVZEVpcUhSQURvYTBs?=
 =?utf-8?B?YmNaaCsxMFlkSzQ5M2RwU081WU9zVWRadVcweElZVWV4d0paRHdwY2YwM2dY?=
 =?utf-8?B?QWNoVUZQV1NqL1o4emtWc3VtSU9TcFNMRWVsRnB4L0pxMzZPNk9UNDQ1OTB1?=
 =?utf-8?B?ZWc9PQ==?=
Content-ID: <9D17791D59AAD54D8EB13FD6F0697939@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?Wm84cm1HeTN1YS9sUStnaEFwL2hSaWp6WEl5L3kzSitTa3RoQ1QxQXM5Slhp?=
 =?utf-8?B?ODZCUnZ6Y1JQRlA3U1ZxTmphWEl2M3FQSGhOSzBDNkppaFEwenM1RHVxV2lI?=
 =?utf-8?B?alcrUjJtOUpZQ3JNNnN5RTFXUnBmbk1IRzdlb1lHSGtsZ2w4eFdJdU01Zk1I?=
 =?utf-8?B?bEp4ZS9EUjg0TjAxT0VnSjFJK2dYeE1NYVVPQWt3TXVURlhxWWIwZ1NtOHlW?=
 =?utf-8?B?WnJnWS9LTVBRcWx3eExYU0lRYzFLRzdod2JtS3BCUjdpUjVGd0Q4RTdMU0RY?=
 =?utf-8?B?UERrOVNScWpmanltRlBOTnN1N1I4aHVRWGVpRUY4T1ZEOUorU090MjJaSTJj?=
 =?utf-8?B?eU0yaGJFY3VQSmIwdHBOV0xMNUN0clZZNUphVFJocldoVjhlM3JLM2xLZW9x?=
 =?utf-8?B?bmFhZ3FWTkhSSkp2WVh0WkY2bmdWRldlL2R4aXR3QUtEdElQcktqS0JJSE9m?=
 =?utf-8?B?eU8zT2psM0ozRXRpN0NlUFlHaUNZNXQ5MUFJZXdPSUFIbW9CQ1dhTEYwZis4?=
 =?utf-8?B?b0xaUGVGMmQ0QkVFdWtGbEdHZHdLSzJlL3ZqUHdyaytEbCtqY3lZZnhkSlpr?=
 =?utf-8?B?V0ZRcWd5S1I3eWplK2RGdlI2b2ZpTmVtTVJMMmJPYnZ3MTJwcEswbG1VZkJj?=
 =?utf-8?B?VVNBQkpjOUVNelRNREFBb1E2WkkxMHdJcWhQeHpOcTF0US8wMmxwSEd5SjNT?=
 =?utf-8?B?M3EvMWdXSEhibjVnbkRKWkhEZ3FIek9ld25rSnNXOWUrbVJXQ0YzWEtYamFM?=
 =?utf-8?B?QUVXMlBBL0VXbnQ3NnRlT0dOTnMwU1k0ZndTeWl4Q1JWZEl6NXcrTXNFbU1u?=
 =?utf-8?B?Z1M0aHh5RWlBMXFMYmZmenc5Z0VKejcxUG1zL1BLRmtYODFkWWwxWXF3Yzl0?=
 =?utf-8?B?clpmd2c0WlNvNVdIa0J3VGFLaHd0V1lUdDBpK2g1VmE1RkNZUEkxME5qclBa?=
 =?utf-8?B?OHdvNllkTU1rWlEwWnA2MkpzcXhZRTljbEd3TFJtZGs3UlR0eWZObnBzU1pC?=
 =?utf-8?B?c2VaTVZsMWN0dUxhRXRyaDlYaUkyMmVaM0ZDT3BwMFVHV1pjb3BYVFBsL2hB?=
 =?utf-8?B?YlV0R0t2dXB2TlBXK0I2dFZLbC8vamZsKzBSWDRualQyK016aXhIclhSZXJD?=
 =?utf-8?B?OXZOMlFPaDZabElzekNZaDlGQjZVcjNmNDNVSlljeTk0V1FGdkVBV1NGUDlG?=
 =?utf-8?B?NFJmdEVkYmhROFVJMFVuNjExWkU4YnJKcEx3b1VYQy9qM01WaVkvTGZoSXRR?=
 =?utf-8?B?VjZiYjk5WEZKNXpINUdVcUdJMlQvemxTcnFmVTB3VXNON3JpTFQzT2ZTd2ov?=
 =?utf-8?B?Tm9GZ0UxOGw2aHZ0UzYxSEQ4bGRqM2RzZW5CRkFJQXh2am9jQVRtUkVNNEV1?=
 =?utf-8?B?dFRmR1JhZnc3ZXhUcGFPekdCdUZiWFlleklrWnBNYnJXeTBjVFc2MFRHdnZ0?=
 =?utf-8?B?MFdRemNqYW1DbHZidCtMeHYzKzhHemN6b0xlU2t3PT0=?=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56edfb47-09f2-4d0e-056d-08db310adaf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 10:38:09.5572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6qiJ9NY9ahPLhKugJnwOs29UsZiH3QjyzsWse5lDwVHnwPrM7vZcZcCBv/V2KRkP2aw7ctBP5Q7ijTEFvTG3A/XQM4KhhfPnTa5HweVGeNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6363
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 30.03.23 01:44, Damien Le Moal wrote: > On 3/30/23 02:06, 
 Johannes Thumshirn wrote: >> Check if adding pages to resync bio fails and
 if bail out. >> >> As the comment above suggests this cannot hap [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phpfj-0005rN-Ae
Subject: Re: [Jfs-discussion] [PATCH 17/19] md: raid1: check if adding pages
 to resync bio fails
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Cc: "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Mike Snitzer <snitzer@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>, David Sterba <dsterba@suse.com>,
 Hannes Reinecke <hare@suse.de>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 30.03.23 01:44, Damien Le Moal wrote:
> On 3/30/23 02:06, Johannes Thumshirn wrote:
>> Check if adding pages to resync bio fails and if bail out.
>>
>> As the comment above suggests this cannot happen, WARN if it actually
>> happens.
>>
>> This way we can mark bio_add_pages as __must_check.
>>
>> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
>> ---
>>  drivers/md/raid1-10.c |  7 ++++++-
>>  drivers/md/raid10.c   | 12 ++++++++++--
>>  2 files changed, 16 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/md/raid1-10.c b/drivers/md/raid1-10.c
>> index e61f6cad4e08..c21b6c168751 100644
>> --- a/drivers/md/raid1-10.c
>> +++ b/drivers/md/raid1-10.c
>> @@ -105,7 +105,12 @@ static void md_bio_reset_resync_pages(struct bio *bio, struct resync_pages *rp,
>>  		 * won't fail because the vec table is big
>>  		 * enough to hold all these pages
>>  		 */
>> -		bio_add_page(bio, page, len, 0);
>> +		if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
> Not sure we really need the WARN_ON here...
> Nevertheless,
> 

I see it as a kind of assert(). It shouldn't fail but in theory it can.

> Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

Thanks


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
