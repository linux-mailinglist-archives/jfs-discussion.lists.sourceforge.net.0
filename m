Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A71A91F6A
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Apr 2025 16:21:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u5Q7E-0005GW-9j;
	Thu, 17 Apr 2025 14:21:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1u5Ko2-0004e3-4R
 for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 08:41:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2HM15lSIcwJz1/Tn8IohqE330i22WhecFHOPITsT+xA=; b=ZWIemGT9P8+CbjIrQgiTAV/fIz
 vAepLIkp3GyXnM3gd+EOZDbW/WCskIllnWG8JUi486CdCllr9g7jYD9mEyuzgrhWDaBoUcgLeSDry
 L7qt9wZIiQTmZCXUvbpboc7rPo9KOmr3IDOUoeee/wl03LHKkquU4Hdd+YHcZEvPOTQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2HM15lSIcwJz1/Tn8IohqE330i22WhecFHOPITsT+xA=; b=Yy6TahzuSdsdI1B3Ya8xLS1JSr
 uiwT0qQlo6WWEuZr5GAsPhNOWAkljR7aoLb4fOXXXLEefaRo8K/1EuA+ll0Q1jayDY0/exAm0xVtp
 OWYoRZkND5tZBzWfeWmgHIHMJ2Y8vAM0u6U90cXLVPvWSWNhG0V1UjOhYs0JQVPnlNHA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u5Knh-0002so-QH for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 08:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1744879228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=2HM15lSIcwJz1/Tn8IohqE330i22WhecFHOPITsT+xA=;
 b=A2wfOquLiwBizl77FWU1T40ejtYXyOeBGGPDETWO5yLRrp2hXoOD3aEuACxKLXx/cAx0R9
 gJ/bsnEukOdI14ggMy+iaE9VrUSEfOT9o0NL8Oy4/oaxcgWOHaHTZFYFiuV0VSgwJyAmqA
 v9mL9I+uYqFwum5MFJ5202Xdt53tAhY=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-462-v9SIojEwOzKGV9Aw5qxpvQ-1; Thu, 17 Apr 2025 04:40:27 -0400
X-MC-Unique: v9SIojEwOzKGV9Aw5qxpvQ-1
X-Mimecast-MFC-AGG-ID: v9SIojEwOzKGV9Aw5qxpvQ_1744879226
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-39c1b1c0969so315578f8f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 17 Apr 2025 01:40:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744879226; x=1745484026;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=2HM15lSIcwJz1/Tn8IohqE330i22WhecFHOPITsT+xA=;
 b=HDsQC+8A62xXnIJQ4VIF+B3emsVDwd/iJZecxEqte9YnEg3Z/R7JZLSf467IZX0voH
 9o+/q/PyHlCO/+tuBJVnna8f4oXnhahVoc89Sf58FnNM4darCEY/X8j36ehf/l9aglBc
 vLw8/90Vt8WULF073DmrnSqOOLVUI2Ll+u43lcqo0qKwOt4MWTBQyyK1WduRAXb4XJEC
 avl5VGsa6xmas278aPHpu88dLkOdpCpn1+jY+fC7RMlTa+CRs+hF9KQClvZkJ8Mk0/YT
 NcrqdnxfT0puMwijPc6zgjjYm1vCeaieYA2kdDKm/F0/pZbRT25AwFnKcBUsrBBrYfYz
 IKWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX4d57iAW8zNYi3t7MonoQAjKStQXDmiq/aPuGoE9aW4mkzo4becujPqKIQGrtMVE+o3Xid7Fm5kP8/dnrb+g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxRVnxx//SS0CuWNFkrGEHKu/4FEiN4EC17uptwmNIecNHk3rY3
 QWqo43ruZmFwdZd3k9o21+pKsaZ2as+tEflsDRQ1F0Ge5qkJB1eAmdexruo7mkjSevPsMGpY21i
 WCYR/X7X0b2FgWRD2v1b6sV+12wWnK5EkDVcpFZd38Qts4uiopHawxVDyw/d3CM8Fu8Hfwl7U
X-Gm-Gg: ASbGncsEZP8EmRUPunmeroFhcCsFhzaLjX+gyVw3qfRhgGA+z5sNkBqFgDFLln+f4e3
 F9v+Gp4Q6ozTufqTD9I9p60j9QTEXHxL3eVdE7oaM2nKoBVghUGQboNiLp4v6w+jDbKqQebxuKI
 9sP0+TyAGTK4YYtPycWhe/zNkUKE992wEVxIyBdmx67SK43wfAzJGeVVgfUd8yyKDTEsm/1GDgr
 sgff05LcYv042zDEm58a0bix7TK2YdQltuJ6oI1RrLy2Hj+xyQ4FFGfcNQxaGDMCqEA+Q8jvdyQ
 nG+6LnlP1GZEWzb7hWURhHTyBO/o6N2mCu+e/aRga6pXHrO4Il1drfkugcKZ3DzCM6Da2IUYqgt
 3wH0tIOTdn/UUT2MoZaIPvOVIz77UCv2SHMma5fE=
X-Received: by 2002:a05:6000:2911:b0:399:6dc0:f134 with SMTP id
 ffacd0b85a97d-39ee5bad76emr4379723f8f.51.1744879225955; 
 Thu, 17 Apr 2025 01:40:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQeRaBf4AjgQTFoutEd6jXROHhB1GPjNf97Ew+mL54HY9MIlxAHk/+IocWI7W3ZkjJTLahOQ==
X-Received: by 2002:a05:6000:2911:b0:399:6dc0:f134 with SMTP id
 ffacd0b85a97d-39ee5bad76emr4379705f8f.51.1744879225578; 
 Thu, 17 Apr 2025 01:40:25 -0700 (PDT)
Received: from ?IPV6:2003:cb:c706:2700:abf9:4eac:588c:adab?
 (p200300cbc7062700abf94eac588cadab.dip0.t-ipconnect.de.
 [2003:cb:c706:2700:abf9:4eac:588c:adab])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39ee3f12dc9sm4168115f8f.8.2025.04.17.01.40.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Apr 2025 01:40:25 -0700 (PDT)
Message-ID: <75dc1299-8a83-4ce8-a715-cf1a8d43e0f9@redhat.com>
Date: Thu, 17 Apr 2025 10:40:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shivank Garg <shivankg@amd.com>, shaggy@kernel.org,
 akpm@linux-foundation.org
References: <20250417060630.197278-1-shivankg@amd.com>
 <20250417060630.197278-2-shivankg@amd.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <20250417060630.197278-2-shivankg@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6g2GUgJhpIkshxh5XqBitJ-wIORprKZ3iEEhlW9ME4M_1744879226
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17.04.25 08:06,
 Shivank Garg wrote: > Export folio_expected_refs()
 to allow filesystem-specific migration > handlers like JFS
 metapage_migrate_folio
 to properly verify reference > counts before mig [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u5Knh-0002so-QH
X-Mailman-Approved-At: Thu, 17 Apr 2025 14:21:19 +0000
Subject: Re: [Jfs-discussion] [PATCH V3 1/2] mm: export folio_expected_refs
 for JFS migration handler
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

On 17.04.25 08:06, Shivank Garg wrote:
> Export folio_expected_refs() to allow filesystem-specific migration
> handlers like JFS metapage_migrate_folio to properly verify reference
> counts before migration.
> 
> Signed-off-by: Shivank Garg <shivankg@amd.com>
> ---
>   include/linux/migrate.h | 1 +
>   mm/migrate.c            | 3 ++-
>   2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/migrate.h b/include/linux/migrate.h
> index aaa2114498d6..cb31c5b1eb6a 100644
> --- a/include/linux/migrate.h
> +++ b/include/linux/migrate.h
> @@ -60,6 +60,7 @@ struct movable_operations {
>   /* Defined in mm/debug.c: */
>   extern const char *migrate_reason_names[MR_TYPES];
>   
> +int folio_expected_refs(struct address_space *mapping, struct folio *folio);
>   #ifdef CONFIG_MIGRATION
>   
>   void putback_movable_pages(struct list_head *l);
> diff --git a/mm/migrate.c b/mm/migrate.c
> index 6e2488e5dbe4..0f01b8a87dec 100644
> --- a/mm/migrate.c
> +++ b/mm/migrate.c
> @@ -445,7 +445,7 @@ void pmd_migration_entry_wait(struct mm_struct *mm, pmd_t *pmd)
>   }
>   #endif
>   
> -static int folio_expected_refs(struct address_space *mapping,
> +int folio_expected_refs(struct address_space *mapping,
>   		struct folio *folio)
>   {
>   	int refs = 1;
> @@ -458,6 +458,7 @@ static int folio_expected_refs(struct address_space *mapping,
>   
>   	return refs;
>   }
> +EXPORT_SYMBOL_GPL(folio_expected_refs);
>   
>   /*
>    * Replace the folio in the mapping.

Can we make that an inline function instead, and add some documentation?

This function is only suitable if we know the folio is unmapped from 
page tables (no references from page table mappings: !folio_mapped()).

So when exporting this function we either

a) Need a clearer name

b) Should generalize it to consider folio_mapcount() etc, and lookup the
    mapping from the folio.

For your use case, a) might be easier. Maybe call  it something like 
"folio_migration_expected_refs" ?

-- 
Cheers,

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
