Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD5370FB4F
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 May 2023 18:05:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q1qyk-0000C1-2r;
	Wed, 24 May 2023 16:04:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1q1qyi-0000Bv-8Y
 for jfs-discussion@lists.sourceforge.net;
 Wed, 24 May 2023 16:04:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rwf57azNybT9v+Lg2CMN2sb9fLVIIGUOGeYghvdjLPg=; b=Mw5sNlBak6oflU0s+tCrJh++vC
 XYiEG76MbbWzJYwTPJUWOmXpN7unM5R1HqE6XdDDvDXvt5kEwT2N6gE5rBRfoFXfkfPdLkIG08eCf
 3KHMXBDtCBIadrTHWxH4vNJY625uSkZMQM24YChFW5LqAxPkrYFXezb8Qr9YYkKfujhQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rwf57azNybT9v+Lg2CMN2sb9fLVIIGUOGeYghvdjLPg=; b=Xa69/obdqaMm0ASq5JqQWMNlj5
 SXep74AEURnpwdjLk/pd2r+9NmLpBMuEHhOuzNephi3MHATh+HoZSdgMTh8dTgctwA2hsCN+J1FA7
 FHytSRlTgqzJeol+/5/lqzVMkzSOk3SxMhgMY/GXiT34A/2oW8V7U48LXA1b5hMY4hhc=;
Received: from mail-qk1-f170.google.com ([209.85.222.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q1qyh-001Ujt-I8 for jfs-discussion@lists.sourceforge.net;
 Wed, 24 May 2023 16:04:44 +0000
Received: by mail-qk1-f170.google.com with SMTP id
 af79cd13be357-75b172e6484so22731385a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 24 May 2023 09:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20221208.gappssmtp.com; s=20221208; t=1684944277; x=1687536277;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rwf57azNybT9v+Lg2CMN2sb9fLVIIGUOGeYghvdjLPg=;
 b=FGfS6C2acDORHlvUoJ0MUscmrKXv4Lk9jTOn459fiy/UcPDwPj+832sQ7EOrvvDrxX
 oCEaBGfDaoPjI6c2UP2z55lj/BzKJZDpjBbSSTF7OdS1XeUIFhvPhZZOcPRdphanCDo6
 WmRwqTzGpA1mxxLEziy9etPGxbXK444n4gryrGYXSv5AbkSEFXGOIb8G5kE96vAHFXbp
 2GqA3yj1zrYR8tYtOmaUV5wcBlBsBvFmQ/KMZ7YxMIOSeAh3sBjh3bslnjIfz/Os+utx
 EGeC+0mvko0405fEZpo5bQJuFth+BFhcS0JEIliG6qs2o125zK7k7qOyf5EYV88G1LX2
 pHZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684944277; x=1687536277;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rwf57azNybT9v+Lg2CMN2sb9fLVIIGUOGeYghvdjLPg=;
 b=EPa7vMwJJzvioEHqgx2dI7y06VyfB+L+T58VlBtiQlekLyoORrtEVk1fEKo3t+TE2I
 YlR0s91RwmYwYT/WrkEtfqIjcVrHpnqtDtuzqtHXe1PU1G2W3baBL1QcUZ0+qnBp0xyB
 8XIYPHbf9N/f7fcd6f0KzA+DJ4C47wXn8uV0MA8nIYecyLjOUZ/pJBdHCz2Q8CXsOqnZ
 ogg3KFQcm3a0bIlhKf0jOK/MNlDXUJ9Y+tF5sQpgH2YLVjL8RGjIGNQla3XQ7YkwxQjC
 1U7NeLSScrVCHnEMyhVkLxVU2ArMGReViQGHm3iZrh7kl/Yd8FlghXjuzDBU7HkrFtyz
 eFjw==
X-Gm-Message-State: AC+VfDzmxECQdZQvU10YnHJABd/36tph4xRuqV3DXOerlYAO8vaFmgtH
 QnYW86+CMT2lERXszuScJQU/Roxmb1zEARDK/3M=
X-Google-Smtp-Source: ACHHUZ50tzfDRcH1j6S2Z6TgSbqpVFNpX8Jv88XOuQFTADKkXBGAMy329r3aqgfQXEN+hNSP1qppLQ==
X-Received: by 2002:a05:6602:3420:b0:774:8571:a6dd with SMTP id
 n32-20020a056602342000b007748571a6ddmr3685006ioz.2.1684940531189; 
 Wed, 24 May 2023 08:02:11 -0700 (PDT)
Received: from [192.168.1.94] ([96.43.243.2]) by smtp.gmail.com with ESMTPSA id
 f13-20020a056638112d00b0040fb2ba7357sm3209457jar.4.2023.05.24.08.02.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 May 2023 08:02:10 -0700 (PDT)
Message-ID: <3235f123-0638-b39f-f902-426059b87f81@kernel.dk>
Date: Wed, 24 May 2023 09:02:09 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/2/23 4:19?AM, Johannes Thumshirn wrote: > We have two
 functions for adding a page to a bio, __bio_add_page() which is > used to
 add a single page to a freshly created bio and bio_add_page() which [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.170 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.170 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1q1qyh-001Ujt-I8
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 5/2/23 4:19?AM, Johannes Thumshirn wrote:
> We have two functions for adding a page to a bio, __bio_add_page() which is
> used to add a single page to a freshly created bio and bio_add_page() which is
> used to add a page to an existing bio.
> 
> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
> 
> This series converts the callers of bio_add_page() which can easily use
> __bio_add_page() to using it and checks the return of bio_add_page() for
> callers that don't work on a freshly created bio.
> 
> Lastly it marks bio_add_page() as __must_check so we don't have to go again
> and audit all callers.

Looks fine to me, though it would be nice if the fs and dm people could
give this a quick look. Should not take long, any empty bio addition
should, by definition, be able to use a non-checked page addition for
the first page.

-- 
Jens Axboe



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
