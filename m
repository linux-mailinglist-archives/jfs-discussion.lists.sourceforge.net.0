Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF19C6F8544
	for <lists+jfs-discussion@lfdr.de>; Fri,  5 May 2023 17:11:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pux56-0008SJ-Fc;
	Fri, 05 May 2023 15:10:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1pux54-0008SC-NT
 for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 15:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lYPB3stPQmWSExnYMshDYbYhsfa2W+OlQjJxEpndWnM=; b=Qt9OWUGEbWUE2qKu8aB/0SjdOE
 hlEvAXAAbEIlNZyZTW7tlIoiQ6KJncjshI+G2nkD6h0QrDqXK7vJQJMBrJN22+V7pQXshhUPDymJp
 N4nZ4iTz26e+tD1odn7HZKdLbqNG+M2hRq4K3E6KxM6f+aBEJYI5Fl3FF0DmgJDZ/ppM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lYPB3stPQmWSExnYMshDYbYhsfa2W+OlQjJxEpndWnM=; b=eiVRJTTdiKERKfdMR01IJ+6drj
 Znu8fZVqIL/e9FRT8NhknrS37Y4Q25uoJoWHGKQce17ak0t1/49wHo0MK3H80eH1U2jq8hLni35/b
 ZTNXXRskzGOxwm+qhiXVns2TVQ7hFKSbZiEDvzSg08h2XSD0YHtSyu7NUlRwumC3MDEs=;
Received: from mail-oa1-f43.google.com ([209.85.160.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pux4w-0002hw-31 for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 15:10:45 +0000
Received: by mail-oa1-f43.google.com with SMTP id
 586e51a60fabf-19175d270b4so402413fac.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 05 May 2023 08:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20221208.gappssmtp.com; s=20221208; t=1683299432; x=1685891432;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lYPB3stPQmWSExnYMshDYbYhsfa2W+OlQjJxEpndWnM=;
 b=qj1QNXMm1qKuTYCY3yLcVbR2M96mUPrckwFZlmVW9MNyx2xn0GHgcZSOT3vDWKeyj6
 GKm15t0CoH6OutZOogETOid468/h9S4LpOjyQ90grcc0tmUH/kU+gAynijogLIBKjEmx
 0WHnDZlGjhs7u6RH/Uqpg7niD+i95AdLLv1SiNMBXWbRLFfMdLfFiGEqrxREPtaq/6NA
 W2CC/7QpqBgIUbpVEYC/eRbrU2Esl2shxumttSTscvIpfxPB4bmhXFHX3H0jeKiN/3u7
 QyL7/POG6bUtE1ooN1uakNKML3D6ii29xTaF5D/3tHpWmzTpGT5JkciqphN2JccSRsU0
 DF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683299432; x=1685891432;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lYPB3stPQmWSExnYMshDYbYhsfa2W+OlQjJxEpndWnM=;
 b=QFzbnsNVbryQj1Y4pumOCabFp0ful4+yms8YxQs3Loi/t5Ilx8W1r7GXAdhBOFk/ME
 Fwe7YH3jA3KEFiJbP6rcBMkhmkPAQrMsIUtI+71v6X1oCDrvcwt4QgZ1eL50BnEDdEmV
 qRgYENNkCi4spWgVJ/muF2TeoVLFgydOlNWYKToH5RpZrEtFW9UJoO+MpiHV8tP1UnIb
 Mw/EL6btHTJOVJvCRY02X3fvQwAZW7x9CDi30V08F52lrkw4/OQdmj0QcFyz4iUxedCk
 0+mX5H8TOUNTMiAiR9N7lMe7+jIbEyOQ/lpZ7Qlccul1V9p/r86RWZmE1n1n999InKTq
 lOPQ==
X-Gm-Message-State: AC+VfDwam/3k4TKdssvODVppRnnwafp1xZU4A3ipbWR8SDG11AvL/rpu
 qqGznlFLWUHaujC62oudFRxrmw+rCG8QPO25xs8=
X-Google-Smtp-Source: ACHHUZ6qoOI/+PGpkkPitfDFrwnR+RSgPJAmgOvbSJFeS3wnUhPPJunQJdt8ejTtUoT1u+x3g04+yQ==
X-Received: by 2002:a81:5d6:0:b0:55a:9e2f:933d with SMTP id
 205-20020a8105d6000000b0055a9e2f933dmr1748012ywf.1.1683295914848; 
 Fri, 05 May 2023 07:11:54 -0700 (PDT)
Received: from [172.20.2.186] ([12.153.103.3])
 by smtp.gmail.com with ESMTPSA id
 x8-20020a814a08000000b0054f56baf3f2sm264788ywa.122.2023.05.05.07.11.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 May 2023 07:11:53 -0700 (PDT)
Message-ID: <e56b4f96-a379-f97b-168f-d03f170744b2@kernel.dk>
Date: Fri, 5 May 2023 08:11:52 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <1ac1fc5e-3c32-9d62-65bf-5ccbb82c37cc@wdc.com>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <1ac1fc5e-3c32-9d62-65bf-5ccbb82c37cc@wdc.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/5/23 2:09?AM, Johannes Thumshirn wrote: > On 02.05.23
 12:20, Johannes Thumshirn wrote: >> We have two functions for adding a page
 to a bio, __bio_add_page() which is >> used to add a single page [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pux4w-0002hw-31
Subject: Re: [Jfs-discussion] [PATCH v5 00/20] bio: check return values of
 bio_add_page
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, "kch@nvidia.com" <kch@nvidia.com>,
 "agruenba@redhat.com" <agruenba@redhat.com>,
 "shaggy@kernel.org" <shaggy@kernel.org>, "song@kernel.org" <song@kernel.org>,
 "snitzer@kernel.org" <snitzer@kernel.org>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>,
 "willy@infradead.org" <willy@infradead.org>,
 "ming.lei@redhat.com" <ming.lei@redhat.com>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>, "hare@suse.de" <hare@suse.de>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "hch@lst.de" <hch@lst.de>, "rpeterso@redhat.com" <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 5/5/23 2:09?AM, Johannes Thumshirn wrote:
> On 02.05.23 12:20, Johannes Thumshirn wrote:
>> We have two functions for adding a page to a bio, __bio_add_page() which is
>> used to add a single page to a freshly created bio and bio_add_page() which is
>> used to add a page to an existing bio.
>>
>> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
>>
>> This series converts the callers of bio_add_page() which can easily use
>> __bio_add_page() to using it and checks the return of bio_add_page() for
>> callers that don't work on a freshly created bio.
>>
>> Lastly it marks bio_add_page() as __must_check so we don't have to go again
>> and audit all callers.
>>
>> Changes to v4:
>> - Rebased onto latest Linus' master
>> - Dropped already merged patches
>> - Added Sergey's Reviewed-by
>>
>> Changes to v3:
>> - Added __bio_add_folio and use it in iomap (Willy)
>> - Mark bio_add_folio must check (Willy)
>> - s/GFS/GFS2/ (Andreas)
>>
>> Changes to v2:
>> - Removed 'wont fail' comments pointed out by Song
>>
>> Changes to v1:
>> - Removed pointless comment pointed out by Willy
>> - Changed commit messages pointed out by Damien
>> - Colledted Damien's Reviews and Acks
> 
> Jens any comments on this?

I'll take a look post -rc1.

-- 
Jens Axboe



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
