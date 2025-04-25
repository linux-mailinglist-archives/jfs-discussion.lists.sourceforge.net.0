Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BEEA9C010
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Apr 2025 09:48:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u8Dn6-00088V-3M;
	Fri, 25 Apr 2025 07:48:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1u8Dn2-00088F-1l
 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Apr 2025 07:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GO2zxukHCloALnng1H7Blhag9vTQE/XFS9zvGQjeCO4=; b=GEJGKLM6xE5f11vFhaWYh+XsLC
 gRLugKsup53/9y4fjAJTj9W5xPCcJ2R/FP00rodEkDgqWL9q5ZYEDS6dozFhUaRDl4xe/CLIhwJEk
 FaxdUqtSmoXJiGjsmd+Gp/j8dplyDpgnp1nqaw7xhlcsAnOzLxecuK2snveCZ1ezJGSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GO2zxukHCloALnng1H7Blhag9vTQE/XFS9zvGQjeCO4=; b=OJ1rJGIos3cEyhazRorm2/7T+R
 P4VouIzP8k968/wB2uwFECUdymiM39zLfWnVjodmocS4pF9QGy/2dENcne0eWQXYtT/hZm91rj5H3
 syPyQe/CDb0+5KA2uYkkXEiEVSV94IkmHJDcVUjfKK3BDHO0xW3iF22B7OtmFj2Erklg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u8Dmm-0000XD-BU for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Apr 2025 07:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745567247;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=GO2zxukHCloALnng1H7Blhag9vTQE/XFS9zvGQjeCO4=;
 b=R3sJSd9TSJqrMclnCWc3RjBiwwcltnhDSqJgGLxHybzqe9ySxILdhPapxT+v+ls13CBfCY
 KoKq1vtP45c7EnOm5IwEqjBUgtbUO3T/a0IL8p1Tb01WbhVtXjEPSXn4EC7m9ICbrFHxiq
 Xyk8ENlG0Usj9mUYyqz9e0rUB+fs6Nc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-363-GWi6Y_dpN0yuDp-syCaOOQ-1; Fri, 25 Apr 2025 03:47:25 -0400
X-MC-Unique: GWi6Y_dpN0yuDp-syCaOOQ-1
X-Mimecast-MFC-AGG-ID: GWi6Y_dpN0yuDp-syCaOOQ_1745567244
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43d0830c3f7so14257315e9.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Apr 2025 00:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745567244; x=1746172044;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=GO2zxukHCloALnng1H7Blhag9vTQE/XFS9zvGQjeCO4=;
 b=Bakdso//tU2CP1aXAshVpwowoxnHM7Q6YlMrpVD+eiD4NtMiugPtkCKV5YodlYkDBM
 NovafQReHBM2u5IR00Jia1rv87qn/vqUf/cOiWoXtsNxoIpFkmT4EWQdy6Pwlmv086Zu
 3LmpDqqYURV/N2trsQlWrl8bcf+kRP+u8mIgEuefDv/B3xt+A/dyk2UtoHM98kG3eMo9
 6o6gsyN1ZlYLeTrxmdgHwJX/j/Fj/QiBUrSeAIwd7fNVM5nu8EVrD8/N3Btn2Yy9iO7D
 sM0gV4ZNgU1SysJQY5FXihb0VGqHYYQRfqqH4Ku8hYT5y1hodH18MK7jgc9hC1BfZC03
 PdzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEBvvJyc4epkPthR3jjpmde9BE5Ocj7Dc1XAXGKbORtAV6bg7z47nYZkuE2ynRsK3Zo8nJFEuHZD3dvLqIRA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxwEG77K/lYgu06/EHmmpdlPnVb6Oao+65ex1XfmyKqeGaAIoVm
 oUQR1O69gw52LPn4KUYf5VURo1JcqZB1f3CU6NjVLVCx8MFVZ65CkD5JLJi6rDaItYTxBC3Iz5s
 PypYwldISg8MBAfTAPIW0IXR1ou0a2WnuOuNfipXtELIFzCEiDIQRDV8KNSf2pyQyww+QIb4y
X-Gm-Gg: ASbGncuZc20l5TDo3QTu1FCD4fNqITBFD/mjH99nUuoEBk+Ap6VD1tQqJ8hiqSI7bL1
 1TY1zxLQr7Ibaim3Nu+T4ASdgj5AsZFeMwWoe1/sihtRBzDm0698E5Uj/PExrLXcmJWyCgF3BWF
 vi+o75CbzZd1IKXlqcF4v4M8sHCRnFsU4ieUNFw1FmbSW3K0/qtuaCwBqpMr/KmTOasBmCrNgEt
 uFpQTOLewHZB9cr2O8NbLoMPzWqbKuTQP1qIKfprPN27aBGq/BjYtgaqJUsJUO7IQY5pzLi0Ul0
 XzCNrsadLaCwE50T5VP/flJ2wJJjvQbuWqAjygs08sWn0+TLSpmU0/dNM5PwyDoKk6vf3kbMiFu
 vPM4pyxNm/85hkIUrLempeP3gcI0ZbF8T4Fg1
X-Received: by 2002:a05:600c:4e0d:b0:43c:ef55:f1e8 with SMTP id
 5b1f17b1804b1-440a65dce73mr12262305e9.13.1745567244257; 
 Fri, 25 Apr 2025 00:47:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTm8Cpw5hnTNuJvUeQGjM73YZn0FLHCOxiSgwY0kpyzJyJpK7WX9oKYSwFNPNDSuvpHrTKxQ==
X-Received: by 2002:a05:600c:4e0d:b0:43c:ef55:f1e8 with SMTP id
 5b1f17b1804b1-440a65dce73mr12261965e9.13.1745567243765; 
 Fri, 25 Apr 2025 00:47:23 -0700 (PDT)
Received: from ?IPV6:2003:cb:c70f:6900:6c56:80f8:c14:6d2a?
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-440a536a021sm15372455e9.29.2025.04.25.00.47.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 00:47:23 -0700 (PDT)
Message-ID: <604a1db2-bd64-455e-9cf7-968cacef0122@redhat.com>
Date: Fri, 25 Apr 2025 09:47:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shivank Garg <shivankg@amd.com>, Matthew Wilcox <willy@infradead.org>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
 <aAg1-hZ0a-44WW6b@casper.infradead.org>
 <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
 <8f24de4d-5088-498a-968d-9e8bb85201ac@redhat.com>
 <aAmtzAv6ZbbRpKHM@casper.infradead.org>
 <7ff5b149-534d-4bb7-8c6d-3147279d3fae@amd.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <7ff5b149-534d-4bb7-8c6d-3147279d3fae@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qWRgFcJZTcLUZ3MGxGCL2UBDbzB4IvriAYLT3lZADvo_1745567244
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 24.04.25 13:57, Shivank Garg wrote: > Hi All, > > Thank
 you for reviewing my patch and providing feedback. > > On 4/24/2025 8:49
 AM, Matthew Wilcox wrote: >> On Wed, Apr 23, 2025 at 09:25:05AM +020 [...]
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
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
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u8Dmm-0000XD-BU
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
Cc: jane.chu@oracle.com, shaggy@kernel.org, wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, apopple@nvidia.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, donettom@linux.ibm.com, ziy@nvidia.com,
 Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 24.04.25 13:57, Shivank Garg wrote:
> Hi All,
> 
> Thank you for reviewing my patch and providing feedback.
> 
> On 4/24/2025 8:49 AM, Matthew Wilcox wrote:
>> On Wed, Apr 23, 2025 at 09:25:05AM +0200, David Hildenbrand wrote:
>>> On 23.04.25 09:22, David Hildenbrand wrote:
>>>> On 23.04.25 02:36, Matthew Wilcox wrote:
>>>>> On Tue, Apr 22, 2025 at 04:41:11PM -0700, Andrew Morton wrote:
>>>>>>> +/**
>>>>>>> + * folio_migrate_expected_refs - Count expected references for an unmapped folio.
>>>>>>
>>>>>> "folio_migration_expected_refs"
> 
> Thank you for catching this, I'll fix it.
> 
> I wasn't previously aware of using make W=1 to build kernel-docs and
> check for warnings - this is very useful information for me.
> 
> I'll add to changelog to better explain why this is needed for JFS.
> 
>>>>>
>>>>> What I do wonder is whether we want to have such a specialised
>>>>> function existing.  We have can_split_folio() in huge_memory.c
>>>>> which is somewhat more comprehensive and doesn't require the folio to be
>>>>> unmapped first.
>>>>
>>>> I was debating with myself whether we should do the usual "refs from
>>>> ->private, refs from page table mappings" .. dance, and look up the
>>>> mapping from the folio instead of passing it in.
>>>>
>>>> I concluded that for this (migration) purpose the function is good
>>>> enough as it is: if abused in wrong context (e.g., still ->private,
>>>> still page table mappings), it would not fake that there are no
>>>> unexpected references.
>>>
>>> Sorry, I forgot that we still care about the reference from ->private here.
>>> We expect the folio to be unmapped.
>>
>> Right, so just adding in folio_mapcount() will be a no-op for migration,
>> but enable its reuse by can_split_folio().  Maybe.  Anyway, the way I
>> explain page refocunts to people (and I need to put this in a document
>> somewhere):
>>
>> There are three types of contribution to the refcount:
>>
>>   - Expected.  These are deducible from the folio itself, and they're all
>>     findable.  You need to figure out what the expected number of
>>     references are to a folio if you're going to try to freeze it.
>>     These can be references from the mapcount, the page cache, the swap
>>     cache, the private data, your call chain.
>>   - Temporary.  Someone else has found the folio somehow; perhaps through
>>     the page cache, or by calling GUP or something.  They mean you can't
>>     freeze the folio because you don't know who has the reference or how
>>     long they might hold it for.
>>   - Spurious.  This is like a temporary reference, but worse because if
>>     you read the code, there should be no way for there to be any temporary
>>     references to the folio.  Someone's found a stale pointer to this
>>     folio and has bumped the reference count while they check that the
>>     folio they have is the one they expected to find.  They're going
>>     to find out that the pointer they followed is stale and put their
>>     refcount soon, but in the meantime you still can't freeze the folio.
>>
>> So I don't love the idea of having a function with the word "expected"
>> in the name that returns a value which doesn't take into account all
>> the potential contributors to the expected value.  And sure we can keep
>> adding qualifiers to the function name to indicate how it is to be used,
>> but at some point I think we should say "It's OK for this to be a little
>> less efficient so we can understand what it means".
> 
> Thank you, Willy, for the detailed explanation about page reference counting.
> This has helped me understand the concept much better.
> 
> Based on your explanation and the discussion, I'm summarizing the 2 approaches:
> 
> 1. Rename folio_migration_expected_refs to folio_migration_expected_base_refs, to
> to clarify it does not account for other potential contributors.
> or folio_unmapped_base_refs?
> 2. Accounting all possible contributors to expected refs:
> folio_expected_refs(mapping, folio)
> {	
> 	int refs = 1;
> 
> 	if (mapping) {
> 		if (folio_test_anon(folio))
> 			refs += folio_test_swapcache(folio) ?
> 				folio_nr_pages(folio) : 0;
> 		else
> 			refs += folio_nr_pages(folio);
> 
> 		if (folio_test_private(folio))
> 			refs++;
> 	}
> 	refs += folio_mapcount(folio); // takes mapped folio into account and evaluate as no-op for unmapped folios during migration
> 	return refs;
> }
> 
> Please let me know if this approach is acceptable or if you have
> other suggestions for improvement.

A couple of points:

1) Can we name it folio_expected_ref_count()

2) Can we avoid passing in the mapping? Might not be expensive to look it
    up again. Below I avoid calling folio_mapping().

3) Can we delegate adding the additional reference to the caller? Will make it
    easier to use elsewhere (e.g., not additional reference because we are holding
    the page table lock).

4) Can we add kerneldoc, and in particular document the semantics?

Not sure if we should inline this function or put it into mm/utils.c


I'm thinking of something like (completely untested):

  
diff --git a/include/linux/mm.h b/include/linux/mm.h
index a205020e2a58b..a0ad4ed9a75ff 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2112,6 +2112,61 @@ static inline bool folio_maybe_mapped_shared(struct folio *folio)
  	return folio_test_large_maybe_mapped_shared(folio);
  }
  
+/**
+ * folio_expected_ref_count - calculate the expected folio refcount
+ * @folio: the folio
+ *
+ * Calculate the expected folio refcount, taking references from the pagecache,
+ * swapcache, PG_private and page table mappings into account. Useful in
+ * combination with folio_ref_count() to detect unexpected references (e.g.,
+ * GUP or other temporary references).
+ *
+ * Does currently not consider references from the LRU cache. If the folio
+ * was isolated from the LRU (which is the case during migration or split),
+ * the folio was already isolated from the LRU and the LRU cache does not apply.
+ *
+ * Calling this function on an unmapped folio -- !folio_mapped() -- that is
+ * locked will return a stable result.
+ *
+ * Calling this function on a mapped folio will not result in a stable result,
+ * because nothing stops additional page table mappings from coming (e.g.,
+ * fork()) or going (e.g., munmap()).
+ *
+ * Calling this function without the folio lock will also not result in a
+ * stable result: for example, the folio might get dropped from the swapcache
+ * concurrently.
+ *
+ * However, even when called without the folio lock or on a mapped folio,
+ * this function can be used to detect unexpected references early (for example.
+ * if it makes sense to even lock the folio and unmap it).
+ *
+ * The caller must add any reference (e.g., from folio_try_get()) it might be
+ * holding itself to the result.
+ *
+ * Returns the expected folio refcount.
+ */
+static inline int folio_expected_ref_count(const struct folio *folio)
+{
+	const int order = folio_order(folio);
+	int ref_count = 0;
+
+	if (WARN_ON_ONCE(folio_test_slab(folio)))
+		return 0;
+
+	if (folio_test_anon(folio)) {
+		/* One reference per page from the swapcache. */
+		ref_count += folio_test_swapcache(folio) << order;
+	} else if (!((unsigned long)folio->mapping & PAGE_MAPPING_FLAGS)) {
+		/* One reference per page from the pagecache. */
+		ref_count += !!folio->mapping << order;
+		/* One reference from PG_private. */
+		ref_count += folio_test_private(folio);
+	}
+
+	/* One reference per page table mapping. */
+	return ref_count + folio_mapcount(folio);;
+}
+
  #ifndef HAVE_ARCH_MAKE_FOLIO_ACCESSIBLE
  static inline int arch_make_folio_accessible(struct folio *folio)
  {
-- 
2.49.0


The PAGE_MAPPING_FLAGS can likely go away soon (I have patches for that),
then we only have to test for folio->mapping.

-- 
Cheers,

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
