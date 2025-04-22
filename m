Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 963E0A97083
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 17:25:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7FUB-0005LM-6a;
	Tue, 22 Apr 2025 15:24:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1u7FU9-0005LA-Fg
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 15:24:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WF7KbuLAZBa24Gp2tTkzynSQqLU+PgyoQ8Ium/89xGc=; b=hZcimB0H2GIXI8CdjcnONBj5BZ
 vvcrbP9aE0wDmF9whIr0YXNepQsTt8IlmrCmJ71wrRlfqbDdioes5QKziu+SAp6ec0OECKnPvgcgw
 KuBUccjS91RxiXFtGUAE+P4DbTSece8C61h9ttAEijFpIr9i2sciz9b2zxJCRrcP7l28=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WF7KbuLAZBa24Gp2tTkzynSQqLU+PgyoQ8Ium/89xGc=; b=Tpd3tTd6+HZ8Z1TULxCLI0J05p
 Qt08CwBzh7ma6WOELd5EiqKTRh8El/CkncGx+OkLyyAKfLz8+eKZ0gxAxSKz3G/bVr94JycAoYOhK
 FZlz+0PEl3bg5kKXKrTpRjvRWaV/zacoQjyaXgudh4SzhLk/Mux8qpmpx6WLKD3KGqmo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u7FTs-0002In-Vo for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 15:24:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745335435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=WF7KbuLAZBa24Gp2tTkzynSQqLU+PgyoQ8Ium/89xGc=;
 b=F4rrWaIQva3QFtMZLrIVo+0iJvHn5orzcBccEiPB7/651gpWdA6sV0H2vS8HulpV8G3pE2
 mjfWMIgbD4WMedhLxpMXpw4MlZ6kSY73E+/IhrkmWi1SzARkTJg5v7MiDAIrvgAueO8THK
 zySw08Dwuv0aW07KtA45BjhVZF3DxzA=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-657-qvmxThV1PbiZgrvF-J7icw-1; Tue, 22 Apr 2025 11:23:54 -0400
X-MC-Unique: qvmxThV1PbiZgrvF-J7icw-1
X-Mimecast-MFC-AGG-ID: qvmxThV1PbiZgrvF-J7icw_1745335433
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-391492acb59so2462374f8f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Apr 2025 08:23:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745335433; x=1745940233;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=WF7KbuLAZBa24Gp2tTkzynSQqLU+PgyoQ8Ium/89xGc=;
 b=BQ7mePGc+KWvKIdcIMIlSWntSJQpWJzGdUHhudHqEhygcyEvd+Rnmj3Vo9bAVGNDwf
 VTzTqFJy1eFJD0mIntohgssCsbOM3ESJ9SDKmcwT+NJP2J6ZW1X8/M+SJ5ZZcIDsJXan
 IHfQrNIaxm/eERopkJvNYHNwzzkMmEEwhHHIlWyE8gIrqNedkCpwhIAJz6uFNbjCrDJu
 ewFjl5EOuGKIZQLN24y99fRl5wd11AHl24SLWk1Zp/wrXW+5BY68TJYP9qVH+je4yUOX
 xbgH9H1lEinsM1/Qi6LTRJs64DEXSKueqwhSAApDMQ7hQSH3JbY6RFWxxQxdqpeUdM8+
 +LcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+5YhLa38eN1CsCjF2LJzVEFqb+A5rpd6RE0nM4jZzxMH2Y26EkqAHqHkTT54nU8zo/Fpvq+NocicJiyH+Jg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwZNnHrXLpBmFFPvEMsi+pVYDdq1yLTIMZ0Z1Nw2vbdEVFTA7gZ
 DeYiVVpwaBpO5aEmBada2oa1LUZca4HpN3tY6nJMes6rONkiy8FcwCibkM9E9bhgtzuq6jVvtpb
 66Z3sKhVbS2GrZ0ShXGO2oDm2vIZP9qCZmcmVBfbVyf9mlyAfe2n5XOxhgdO+n9l0CqcXQ8BY
X-Gm-Gg: ASbGncsGmp6flabiyQVNqg0UhN0Kcta8s1OwgZT6Iz+nQ9vOH9uaGv/QIotdt+bIPeb
 Ey59lXadU4s9klCZBgy1boqUlRdZTnV1Od+EC2ymGalNN0rs5PbKvxIiG/4o36hqTm+/Na0/Dn+
 Q6TNSaiAY2XlZEFhDdgf4S3qcuuy90ko8jTwtqjtAfcLoOwVzg4uIPCrrDhkYoYgnZRx1JM6RhI
 EdqP2ceHNGvJ3KldFbAUOkqvp1af+oAN30dF5cdk2wgnJmAOPPssTGddyW336Cmu81Cjo9wUkNO
 JQMqZI8e8768Yc8RAXUuhNPnRIXvtfy1VFp2JIjAf6JmyWZ20J/5sdEoqBs55qxcDnolyvcgNxI
 vkByh51Ie0152+Soq7ooSgmv1Bi4zZ0UTCZju
X-Received: by 2002:a05:6000:240d:b0:39c:13fd:e50e with SMTP id
 ffacd0b85a97d-39efba2ca32mr12874435f8f.10.1745335433008; 
 Tue, 22 Apr 2025 08:23:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHueBAUwYTFgWq3aFYVageJU081iIqdMXlLimeK94dkMas7owys6I0xlQdmWLwcRD9uuCsvOQ==
X-Received: by 2002:a05:6000:240d:b0:39c:13fd:e50e with SMTP id
 ffacd0b85a97d-39efba2ca32mr12874409f8f.10.1745335432573; 
 Tue, 22 Apr 2025 08:23:52 -0700 (PDT)
Received: from ?IPV6:2003:cb:c731:8700:3969:7786:322:9641?
 (p200300cbc73187003969778603229641.dip0.t-ipconnect.de.
 [2003:cb:c731:8700:3969:7786:322:9641])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39efa43bf2csm15728851f8f.51.2025.04.22.08.23.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Apr 2025 08:23:52 -0700 (PDT)
Message-ID: <67f0669d-1063-486f-a995-f8d18634a1be@redhat.com>
Date: Tue, 22 Apr 2025 17:23:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shivank Garg <shivankg@amd.com>, shaggy@kernel.org,
 akpm@linux-foundation.org
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-3-shivankg@amd.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <20250422114000.15003-3-shivankg@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: X30mUv1B4f8F4fbUWavIMsxsoKEbpR2dxTmozO3dB5Y_1745335433
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 22.04.25 13:40,
 Shivank Garg wrote: > Add the missing migrate_folio
 operation to jfs_metapage_aops to fix > warnings during memory compaction.
 These warnings were introduced by > commit 7ee3647243e [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7FTs-0002In-Vo
Subject: Re: [Jfs-discussion] [PATCH V4 2/2] jfs: implement migrate_folio
 for jfs_metapage_aops
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
> Add the missing migrate_folio operation to jfs_metapage_aops to fix
> warnings during memory compaction. These warnings were introduced by
> commit 7ee3647243e5 ("migrate: Remove call to ->writepage") which
> added explicit warnings when filesystems don't implement migrate_folio.
> 
> System reports following warnings:
>    jfs_metapage_aops does not implement migrate_folio
>    WARNING: CPU: 0 PID: 6870 at mm/migrate.c:955 fallback_migrate_folio mm/migrate.c:953 [inline]
>    WARNING: CPU: 0 PID: 6870 at mm/migrate.c:955 move_to_new_folio+0x70e/0x840 mm/migrate.c:1007
> 
> Implement metapage_migrate_folio which handles both single and multiple
> metapages per page configurations.
> 
> Fixes: 35474d52c605 ("jfs: Convert metapage_writepage to metapage_write_folio")
> Reported-by: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com
> Closes: https://lore.kernel.org/all/67faff52.050a0220.379d84.001b.GAE@google.com
> Signed-off-by: Shivank Garg <shivankg@amd.com>
> ---
>   fs/jfs/jfs_metapage.c | 94 +++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 94 insertions(+)
> 
> diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
> index df575a873ec6..a12fbd92cc69 100644
> --- a/fs/jfs/jfs_metapage.c
> +++ b/fs/jfs/jfs_metapage.c
> @@ -15,6 +15,7 @@
>   #include <linux/mempool.h>
>   #include <linux/seq_file.h>
>   #include <linux/writeback.h>
> +#include <linux/migrate.h>
>   #include "jfs_incore.h"
>   #include "jfs_superblock.h"
>   #include "jfs_filsys.h"
> @@ -151,6 +152,54 @@ static inline void dec_io(struct folio *folio, blk_status_t status,
>   		handler(folio, anchor->status);
>   }
>   
> +static int __metapage_migrate_folio(struct address_space *mapping, struct folio *dst,
> +				    struct folio *src, enum migrate_mode mode)
> +{
> +	struct meta_anchor *src_anchor = src->private;
> +	struct metapage *mps[MPS_PER_PAGE] = {0};
> +	struct metapage *mp;
> +	int i, rc;
> +
> +	for (i = 0; i < MPS_PER_PAGE; i++) {
> +		mp = src_anchor->mp[i];
> +		if (mp && metapage_locked(mp))
> +			return -EAGAIN;
> +	}
> +
> +	rc = filemap_migrate_folio(mapping, dst, src, mode);
> +	if (rc != MIGRATEPAGE_SUCCESS)
> +		return rc;
> +
> +	for (i = 0; i < MPS_PER_PAGE; i++) {
> +		mp = src_anchor->mp[i];
> +		if (!mp)
> +			continue;
> +		if (unlikely(insert_metapage(dst, mp))) {
> +			/* If error, roll-back previosly inserted pages */
> +			for (int j = 0 ; j < i; j++) {
> +				if (mps[j])
> +					remove_metapage(dst, mps[j]);
> +			}
> +			return -EAGAIN;
> +		}
> +		mps[i] = mp;
> +	}
> +
> +	/* Update the metapage and remove it from src */
> +	for (i = 0; i < MPS_PER_PAGE; i++) {
> +		mp = mps[i];
> +		if (mp) {
> +			int page_offset = mp->data - folio_address(src);
> +
> +			mp->data = folio_address(dst) + page_offset;
> +			mp->folio = dst;
> +			remove_metapage(src, mp);
> +		}
> +	}
> +
> +	return MIGRATEPAGE_SUCCESS;
> +}
> +
>   #else
>   static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
>   {
> @@ -175,6 +224,32 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
>   #define inc_io(folio) do {} while(0)
>   #define dec_io(folio, status, handler) handler(folio, status)
>   
> +static int __metapage_migrate_folio(struct address_space *mapping, struct folio *dst,
> +				    struct folio *src, enum migrate_mode mode)
> +{
> +	struct metapage *mp;
> +	int page_offset;
> +	int rc;
> +
> +	mp = folio_to_mp(src, 0);
> +	if (mp && metapage_locked(mp))
> +		return -EAGAIN;
> +
> +	rc = filemap_migrate_folio(mapping, dst, src, mode);
> +	if (rc != MIGRATEPAGE_SUCCESS)
> +		return rc;
> +
> +	if (unlikely(insert_metapage(dst, mp)))
> +		return -EAGAIN;
> +
> +	page_offset = mp->data - folio_address(src);
> +	mp->data = folio_address(dst) + page_offset;
> +	mp->folio = dst;
> +	remove_metapage(src, mp);
> +
> +	return MIGRATEPAGE_SUCCESS;
> +}
> +
>   #endif
>   
>   static inline struct metapage *alloc_metapage(gfp_t gfp_mask)
> @@ -554,6 +629,24 @@ static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
>   	return ret;
>   }
>   
> +/**
> + * metapage_migrate_folio - Migration function for JFS metapages
> + */
> +static int metapage_migrate_folio(struct address_space *mapping, struct folio *dst,
> +				  struct folio *src, enum migrate_mode mode)
> +{
> +	int expected_count;
> +
> +	if (!src->private)
> +		return filemap_migrate_folio(mapping, dst, src, mode);
> +
> +	/* Check whether page does not have extra refs before we do more work */
> +	expected_count = folio_migration_expected_refs(mapping, src);
> +	if (folio_ref_count(src) != expected_count)

Probably no need for the temporary variable.

Hm, makes me wonder if it should be called 
folio_migration_expected_ref_count() ... :)

Bit it's even longer, whatever you think is best.

-- 
Cheers,

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
