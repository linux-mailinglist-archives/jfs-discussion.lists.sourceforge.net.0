Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39575A9705C
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 17:19:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7FP8-0006Cf-Of;
	Tue, 22 Apr 2025 15:19:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1u7FP7-0006CT-Nh
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 15:19:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+G9Cy5Doy+79S4Imbry+Il93p84CW35Nb4NlHcxcntU=; b=k4N2CcgYhn5P3jkUEqxHtm6ad7
 IwIKNE/1kb1YBc6puxu+MpUJWoFMJHb1mzAxLeoPOv6USRA8CeYnT59l0rfT8NVhMur/U4SOIQRUq
 QTdv82qYq0skJQzofrSPF6UYjLx3h+hQUmeREIqRB/foxZFUupdYnB4ospDZAWC+DDWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+G9Cy5Doy+79S4Imbry+Il93p84CW35Nb4NlHcxcntU=; b=TGmbhiZIQSdBKfXpkL+MSVRlwF
 x5bVDojonFR3DnT19ANVzeNYO4Tm3nHel6ZPJA6UvRzkOgdSEkOS3i5jwm76+369maxqIlGsxXkqZ
 kkioYl35Cn2a6+ChS9dPfzkSUUSPVOsiSgZgW1IX17797jRNQR3AfoMB3oZ2yPki71yA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u7FOs-0001w8-HE for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 15:19:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745335130;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=+G9Cy5Doy+79S4Imbry+Il93p84CW35Nb4NlHcxcntU=;
 b=Lgb4LcVGFU2C/5ASg44uFJ1+cnCto6gSXRlDV09gSg3dVcfjY+RUF7hdze7XtG5XHp3apC
 j82d2xJlWKRr2AyE0kslQYygZH7EQLbL9x9Rt5lnx3yolJW8UDVTJ0ODbtoSE0yzdq3hRu
 XhpPib0JXiror+s0bSpZIw4Y+RssVc0=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-120-Sj1_lySQOg-vjflamHscdA-1; Tue, 22 Apr 2025 11:18:46 -0400
X-MC-Unique: Sj1_lySQOg-vjflamHscdA-1
X-Mimecast-MFC-AGG-ID: Sj1_lySQOg-vjflamHscdA_1745335126
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43eed325461so30857105e9.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Apr 2025 08:18:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745335125; x=1745939925;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=+G9Cy5Doy+79S4Imbry+Il93p84CW35Nb4NlHcxcntU=;
 b=dA82LTJnhOkJkfAtqZXVsWVTZsMv9Y0oXJgO9/cLEMLczuX3a2fC9GXTjpONXqR87W
 v+ZL9poUzrNO8veUaTcRYdvwyaD1g9GCdSyf1X6l7TBnX/tFli0A4BbC9y3DDwpSas0X
 atdBla0eP7V7/KS9kOTV918p5i2YGaq1eNlcfJXoZUb86dI/eGbUdjnCfGfYyEA0p+Xz
 dz13hHNt0O9vA68NkJdeJ99F8INVfLuFU7qDEou+4iesFy6zxrNRCe55gJNdAuUZot4O
 LQYry52laVKxdVEzAnwH60N47GFFjKVfnFOZ4dybg3mijSHlCo4AjCjk9hGYmIKrzgDL
 X/bg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrJy2N0cAbuRtwsAWh2dxDqZFcziaClfn4kCn1yGy8UOJLC7qwF+8pTwsADZmInimJjO2cAumF6ds7wIGfOg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzHe+mcVsQRI7zQkMdcYrF75BqEHdueat5F+l9bstyXTANi5/3t
 3HM4fDTcxOCPooy0fwL5RMYtXLD19x002NUOd/952qHw5OwbyxnopzMn/dnKy3nyG4MSQacv34g
 /fTfDcqAD+bcfmAlS9FhxFfkaQSUSjahg78xrD13uSh3lg0tK5f7wPT0PQzKEYKgqjOH2EziW
X-Gm-Gg: ASbGncuT6NkQzv0xT44bqCOO5dP6VI0DYmXflft0KzdDE8isihDnc6SVFq/TCjf/3mL
 tL/cVbRswBAfJaGsGGWc2V2894ObKSD+Q/Wh7YfdxRmFZKki3Zvf7PBJ385f9pa0YPbWvKvC4cK
 pc0Uj1m4FSMWMwDj448pOxKW60yv/RHwAbjdQpqI+9br+N0DexQCve1RHcm/gV1euYKZR6oCd+k
 Fly5WC28MuSL3n2RbP4FF3TWnoJ1kMSiU3de8f2NMs9iZLQKDui0CA2oBSnK1VbQ9j0N/I2VvEX
 AJ6OfIUf59THAw4hu3HTtlHdSVlpQtaWmo25FHz4ZZDYaKnA03IquPIpzWMS3MqAuv/WXzR6tX5
 qwrATjR2LfQrIxx5ficFsn1zO1yf+qjlchp1C
X-Received: by 2002:a05:600c:5110:b0:43c:fded:9654 with SMTP id
 5b1f17b1804b1-4406aba7088mr133655495e9.19.1745335125618; 
 Tue, 22 Apr 2025 08:18:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMryMb7OCN5dZWHmN4IAH0EUIubtU3a+AQxU/uTieg3Jy0zIfW4bAMlDO7kljQWcQfzvnQKA==
X-Received: by 2002:a05:600c:5110:b0:43c:fded:9654 with SMTP id
 5b1f17b1804b1-4406aba7088mr133655215e9.19.1745335125271; 
 Tue, 22 Apr 2025 08:18:45 -0700 (PDT)
Received: from ?IPV6:2003:cb:c731:8700:3969:7786:322:9641?
 (p200300cbc73187003969778603229641.dip0.t-ipconnect.de.
 [2003:cb:c731:8700:3969:7786:322:9641])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39efa43315esm15353186f8f.26.2025.04.22.08.18.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Apr 2025 08:18:44 -0700 (PDT)
Message-ID: <d2a1009f-d55a-4282-95cb-6efffc008186@redhat.com>
Date: Tue, 22 Apr 2025 17:18:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shivank Garg <shivankg@amd.com>, shaggy@kernel.org,
 akpm@linux-foundation.org
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <20250422114000.15003-2-shivankg@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5hICIL583H6b7chv-OLEn6959mQFbktoxQw7WoBNIuY_1745335126
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 22.04.25 13:40,
 Shivank Garg wrote: > Rename the previously
 static folio_expected_refs() to clarify its > purpose and scope, making it
 an inline function > folio_migration_expected_refs() to calcul [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7FOs-0001w8-HE
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
From: David Hildenbrand via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: David Hildenbrand <david@redhat.com>
Cc: jane.chu@oracle.com, wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, apopple@nvidia.com,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 22.04.25 13:40, Shivank Garg wrote:
> Rename the previously static folio_expected_refs() to clarify its
> purpose and scope, making it an inline function
> folio_migration_expected_refs() to calculate expected folio references
> during migration. The function is only suitable for folios unmapped from
> page tables.
> 
> Signed-off-by: Shivank Garg <shivankg@amd.com>
> ---

Thanks!

Acked-by: David Hildenbrand <david@redhat.com>

-- 
Cheers,

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
