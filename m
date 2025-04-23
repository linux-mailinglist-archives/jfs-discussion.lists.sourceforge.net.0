Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C25A98097
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Apr 2025 09:23:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7URw-0001XC-LJ;
	Wed, 23 Apr 2025 07:23:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1u7URh-0001Wk-0m
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 07:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EBuSEig5jIqMR64muBvbm2+Uy3ppV9YN4GVnlvKWBjg=; b=goC+kWHokvw6Emdr9TL9aHgZzf
 eOwzjBUoOE2Kpsl96YvC58FLvqAz6JOx93SAjxmkF62jOJpYGwdIdmw+9iLRhDiEdE7iRKwr4Ohc/
 yaVjWGNBz4Oap+UYTOA9B5BXNwk0I9QYECU8hN7ukcT3UHq4f6Xp2y8RdvCIFepVAaQg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EBuSEig5jIqMR64muBvbm2+Uy3ppV9YN4GVnlvKWBjg=; b=Yps013fKaoT3/iq21dER4kpVrh
 PUemLD3HpEItYrXp8aHL3nsa3oI6c+u4m3JD3Q4S1Es1Y3LqCJmoSOUiIc5qdRpgvJKS2FiAKHc0Y
 os65WBw/UMMnoeC8sRlViHMWjT7XiUtydChtQhO9SK1ttD2dDlqEwuK/83TrljgAw5Ak=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u7URR-0005AR-3t for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 07:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745392946;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=EBuSEig5jIqMR64muBvbm2+Uy3ppV9YN4GVnlvKWBjg=;
 b=TEdLecV8sq3V0U22ECIeukb8D3Vuh98k8h9qP/t+VuNNGoQCLZGp1YCpwBfe+EaUByksLD
 Z3efeVOGCQ2y63kX3Xh0GanliLXGKkxUSbPSKZi1BpL4yMEAukM7XXw6COCXXL88rFpLMd
 crU6danR2rlugvZZnqulIsQJOKoFEzs=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-MDSKLLaUMiW6h5hKOMSDvA-1; Wed, 23 Apr 2025 03:22:25 -0400
X-MC-Unique: MDSKLLaUMiW6h5hKOMSDvA-1
X-Mimecast-MFC-AGG-ID: MDSKLLaUMiW6h5hKOMSDvA_1745392943
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-39abdadb0f0so2049276f8f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 23 Apr 2025 00:22:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745392943; x=1745997743;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=EBuSEig5jIqMR64muBvbm2+Uy3ppV9YN4GVnlvKWBjg=;
 b=bt4PfBdlu9huDUVJdTsdavtaJiBRPzi0g027TqKvNzMxuoOlkcEFmVLgOlvxsEmPsL
 jFe8h8AE6TUVWaIp4450imFu2WApzO7auVqsBCwGlLqEQCcPVIdF9EBNPs30cf4SzOFY
 QIha/aPud2hpaZE15fNQ/CggpEmL07VuJjSSIvYNuKRta+JZKQ3H6M0DR3XmaZXgc9tP
 FpHX/DJibz5O3GfrmelQjV/J0DEsFBQJ18i/r4R7b/Et6Aboj8tTOe9Rh1WmPsuU/LlU
 ljO8Xloy1C4c74ZIEWrItjY051PQ3Gp/aJ610jQbE74nFf8hKVrzr4nW3+MK5qVL+hk/
 5H1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2x4B2m/PAUSqm83jicbbiPP1HsJaNWSEl1GehfXo1B2omPs4knsSsW8NoYmbXPsFBce19RuAGBTYc71AetQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyVnodRw8ha53Pu4tKVSiulIL3bG4tv3PNZT6AnKaOC7NOp6Vxj
 gx6ZVhkptejGby9JBN5mXSQsKNHKhUNfDnzZObGutu96YB03+PS+7c+KSVmrTC86BrLF2x6BpV/
 mYkZU57CzQiVAKJQFNulPkD2RntRPayqPCjGnksH7AhUZkdkL3tRjNWoHlcv0QfuL9n4Htpy8
X-Gm-Gg: ASbGncteTVCmEUAJcYebws6hHRPJVSZvVIz0rnfa3KBaeEJD9mNayqQPTHeLrGBJYdj
 RDlzXMXe9/xhKjWfZTbkAsbY/upF9Dffx7eYNXLHrZCBdhUpxYlXn3oNVes25PpT8/dgKk8MS9A
 Ww4Z4ruNaBJcCH2MPCurU2ohEgVcEU+c1PbTrg0KQ3GtgAsIrQ+Cjgl2VcZ9aaQR7opE24L/Ges
 /PCKouGQp9VR/41yjdKMrNi9DJOa/wH24S7mZD0i7a/AN9q5TULOzblQfXx8VAdqRRkxDQYNltp
 t+vk5ongWcvykGTqk9oRcQaI9qTiIE0BXD4ThNk3yuzvH+vn8LX2CRxpuHj3+/rS6uNbZz5r2zo
 JbOssKbpbtJnTdJ+rfeZr2QbBe7PKw2NFc193i3g=
X-Received: by 2002:a05:6000:2403:b0:39c:1f04:a646 with SMTP id
 ffacd0b85a97d-39efba45f64mr14384419f8f.13.1745392943470; 
 Wed, 23 Apr 2025 00:22:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfuffIV3TY+UzXqaQPu8SArla1wmKpBhdro1DmTQpmv7CTh3OUFOqEwNH2EmpXzKZL4H+UUA==
X-Received: by 2002:a05:6000:2403:b0:39c:1f04:a646 with SMTP id
 ffacd0b85a97d-39efba45f64mr14384397f8f.13.1745392943118; 
 Wed, 23 Apr 2025 00:22:23 -0700 (PDT)
Received: from ?IPV6:2003:cb:c740:2c00:d977:12ba:dad2:a87f?
 (p200300cbc7402c00d97712badad2a87f.dip0.t-ipconnect.de.
 [2003:cb:c740:2c00:d977:12ba:dad2:a87f])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39efa493255sm17918781f8f.69.2025.04.23.00.22.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Apr 2025 00:22:22 -0700 (PDT)
Message-ID: <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
Date: Wed, 23 Apr 2025 09:22:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthew Wilcox <willy@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
 <aAg1-hZ0a-44WW6b@casper.infradead.org>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <aAg1-hZ0a-44WW6b@casper.infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: a93tLWYTdxYVeOY4fIc0qpEoptIWihXFifIx7sPA77Y_1745392943
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 23.04.25 02:36, Matthew Wilcox wrote: > On Tue, Apr 22,
 2025 at 04:41:11PM -0700,
 Andrew Morton wrote: >>> +/** >>> + * folio_migrate_expected_refs
 - Count expected references for an unmapped folio [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7URR-0005AR-3t
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
Cc: Shivank Garg <shivankg@amd.com>, shaggy@kernel.org,
 wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, jane.chu@oracle.com,
 apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 23.04.25 02:36, Matthew Wilcox wrote:
> On Tue, Apr 22, 2025 at 04:41:11PM -0700, Andrew Morton wrote:
>>> +/**
>>> + * folio_migrate_expected_refs - Count expected references for an unmapped folio.
>>
>> "folio_migration_expected_refs"
> 
> Please run make W=1 fs/jfs/ in order to run kernel-doc on this file.
> It'll flag this kind of error.
> 
>> It's concerning that one particular filesystem needs this - one
>> suspects that it is doing something wrong, or that the present API
>> offerings were misdesigned.  It would be helpful if the changelogs were
>> to explain what is special about JFS.
> 
> It doesn't surprise me at all.  Almost no filesystem implements its own
> migrate_folio operation.  Without going into too much detail, almost
> all filesystems can use filemap_migrate_folio(), buffer_migrate_folio()
> or buffer_migrate_folio_norefs().  So this is not an indication that
> jfs is doing anything wrong (except maybe it's misdesigned in that the
> per-folio metadata caches the address of the folio, but changing that
> seems very much too much work to ask someone to do).
> 
> What I do wonder is whether we want to have such a specialised
> function existing.  We have can_split_folio() in huge_memory.c
> which is somewhat more comprehensive and doesn't require the folio to be
> unmapped first.

I was debating with myself whether we should do the usual "refs from 
->private, refs from page table mappings" .. dance, and look up the 
mapping from the folio instead of passing it in.

I concluded that for this (migration) purpose the function is good 
enough as it is: if abused in wrong context (e.g., still ->private, 
still page table mappings), it would not fake that there are no 
unexpected references.

Because references from ->private and page tables would be unexpected at 
this point.

So I'm fine with this.

A more generic function might be helpful, but in general it is more 
prone to races (e.g., page table mappings concurrently going away), so 
it gets trickier to document that properly.

-- 
Cheers,

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
