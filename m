Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F63BB3A455
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Aug 2025 17:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VOy2AywaNUzUHF5LETAWBlJcC2V5Ogyc1iVA/3RPioo=; b=a0GVZ8bxIQfgJk1TEAeSj88EEn
	3xYetas//K6MQWjwcncSY0vB4weAnhBTHw1qRSNYavmy0JgwrEDcF4PoJdmhyo33fn0MNEo4MpJpV
	A7O6DCKh5stVAK91WDt/EFrVeihp2Grx27V3Aj8irtZr25VSR0I3W3R8ReOUxojTrYy0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ureUS-0005Fb-WC;
	Thu, 28 Aug 2025 15:24:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <byungchul@sk.com>) id 1um0MM-0003DY-OW
 for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Aug 2025 01:32:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YcsutHOUWyK60hhYoAY0U9VqHDWR7i6ThQc7dfya0Wo=; b=DcBggKVJo+7C6HXfWf10LW3qXv
 eLX5ioQOFjGwIP+yER/NK1WABrvkvEukYzkxpk3wiDuqYgJ+Ttgc/vnxJnHY941dO6Jn403P9HICJ
 37/ZukA1ATzLK+lzu4xrB0cMHjEHU/HzIsIbAEruVXdZPZ3Uthc7+n/2myj81DOeSKnc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YcsutHOUWyK60hhYoAY0U9VqHDWR7i6ThQc7dfya0Wo=; b=R6Ovag0W5jbGBxlXou2UMIr2Ay
 LAcChNnemd0ixa3pAtU/qYK6Pe8gfgzw55q07PtxCIaOkAnAlpAhD1yeCz5whtYShanUb+YsW86bq
 WaX4X/op8zcvr5/fOJwR6cC3bfxTpJbBZDl0Sd6n9njtbVVbdoXa2rwYBZJfXxsl7mNI=;
Received: from exvmail4.skhynix.com ([166.125.252.92] helo=invmail4.hynix.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1um0MM-0004NO-9v for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Aug 2025 01:32:59 +0000
X-AuditID: a67dfc5b-c45ff70000001609-d4-689beb3dbd50
Date: Wed, 13 Aug 2025 10:32:40 +0900
From: Byungchul Park <byungchul@sk.com>
To: David Hildenbrand <david@redhat.com>
Message-ID: <20250813013240.GA78125@system.software.com>
References: <20250811143949.1117439-1-david@redhat.com>
 <20250811143949.1117439-3-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250811143949.1117439-3-david@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTYRTHed67q8XrMnpshLAIS+liKJwu2uVLT9+KCsTIWvrWRpvGNNOo
 WEpWRmojL21qqXgrw5yWravXLLppiS7yghkuW2kZVs5LuUXUtx//8z8/zocj0IoSdoGgjYmX
 DDFqnYqTMbLPs4uWhTotmpV9dSrIq6rk4I59B0yZHvGQNl3LgLNpFEG3ycGDKSOXh7EqFw1t
 P09SMJBfwcN4TysPKcVVHFhyUigoffWNgsKnnTS0fz1FwWR/ELTeLODhYnYyglcD5Tzcu/+E
 gdd38jjorfzFwsSPaRYKbCYWvqcroXRshIdaYyMHv1wfWSi19TMw/sHOwLNsA9ytLuLgbfdP
 Gl5OtbLQUlfBQmcywLVKDVhaevkN/mTCZULE3PecIxZjO0PG3rygSNGQkSEXUoZ5YjP38ORc
 6mueFN8booj16lmOWEdNPHmcO8EQW/9qUmjMoklmUT0iD/Mr+a3KCNm6aEmnTZAMK8L2yjTD
 NQPUoabjiVODdZQRPd+ZhgQBi8F41LktDXl5sPyijXYzIy7Gnz62e5gT/bHdPu5hH3EJtqbe
 mGGZQIuOWfjc6RLGPZgrbsA2h5lyO+Ui4KxOnTtWiBKu+vGAd7Nc9MZPLr331GkxANunhzx1
 WlTismnBHXvNbN7vSGfdPE9chOtvtVJ/Tnsm4Jx3IX/YFzeU25lMJJr/s5r/s5r/Wa8g+ipS
 aGMS9GqtLni5JilGm7g8KlZvRTPPU3p8ctdtNNq2vRGJAlLNlretsWgUrDohLknfiLBAq3zk
 +btnInm0OumoZIjdYzisk+IakVJgVPPlq74fiVaIB9Tx0kFJOiQZ/k4pwWuBEQWFDXdGuHY7
 NpPH4AjapvTzDz+/MLSwfrDM3mDJnDj/LVxv8X6Rh4/ymwK7rlfX+gbrdc1NqJC0h/j6bdxi
 /bR6MnRpxbG1EZHsvmsLt0bqhpx7S7o6/EMyAvZ/8WsucJ4JDK0fGdy4vmxOTUt0blS4K3ax
 X3PsZbO5IPXDiZwwFROnUQcF0IY49W+ou5JiOAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTcRyG+Z/7VsOTGR2VSBddFMqMgl95SehDJ4OIKLuA5NBDW84Zm3kp
 pNnIUMt0eN3S0lCzBpaltsqSjWWjzLy0JmUhSksNpYuZ85YTIr89vO/7fHsZ3Duf9GMUqhRB
 rZIppZSYEB8I022OGDXKt+aVesH1BhMFj52HYVb/gobcuYcEjFp/IPiod9Ggv1ZGw0SDG4e3
 f7IwGKyop2Gqv50G3a0GCoylOgxqu39iUPXKgUPX90sYzAyEQntTJQ3WCjsJRSUXEXQP3qbh
 aaudgJ7H1yn4ZJonYXpyjoRKs56E3/n+UDsxTsNDrYWCefcICbXmAQKmvjoJeF2iBovDRcKT
 +9UUfPj4B4fO2XYSbC31JDguAtw1ycFo+0RHBfHTbj3iDZ87KN6o7SL4ib43GF89rCX4Qt0Y
 zZsN/TSfl91D87eeDmN8450cim/8oaf5l2XTBG8e2MlXaYtxvqC6DfHPK0z0wTUnxOEJglKR
 KqhDIuPE8rEHg9gZa2b67JcWTIs6juQiEcOx27nbRWbcwwS7nvs20rXIFLuRczqnFtmH3cQ1
 Zt9bYDGDs65lXN7lGsJTrGSjOLPLgOUihpGwwBU7lJ7YmxW4hslntIcl7ArOXj60OMfZYM45
 N7w4x1l/rm6O8cSiBbO1N5/08Cp2HdfW3I4VIIlhiW1YYhv+2zcRfgf5KFSpSTKFcscWTaI8
 Q6VI3xKfnNSIFl5SmzlT+Aj96tlrQSyDpMslb3cZ5d6kLFWTkWRBHINLfSQVsQuRJEGWcU5Q
 J59Un1UKGgvyZwjpakn0USHOmz0lSxESBeGMoP7XYozIT4uKb1S+mw5qjo/EbLa+FEnQ2qbX
 x/ev2+2MpXyrAsNWnfcj7HVXen33RBfaIkx5aCjmSExda+dp9zjrTk02DG7b9t6KbejvEEd0
 GiK3v2kOTCspovrUpnfH8hMOrfyVpvILCSgLd5hLL1wdKA+3UfvuhooCak7m1HtpsrhDuviN
 UkIjl4UG42qN7C9NYmcCIQMAAA==
X-CFilter-Loop: Reflected
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 11, 2025 at 04:39:48PM +0200, David Hildenbrand
 wrote: > At this point MIGRATEPAGE_SUCCESS is misnamed for all folio users,
 > and now that we remove MIGRATEPAGE_UNMAP, it's really the only [...] 
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1um0MM-0004NO-9v
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:24:39 +0000
Subject: Re: [Jfs-discussion] [PATCH v1 2/2] treewide: remove
 MIGRATEPAGE_SUCCESS
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
Cc: linux-aio@kvack.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, linux-mm@kvack.org,
 Ying Huang <ying.huang@linux.alibaba.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Rakie Kim <rakie.kim@sk.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alistair Popple <apopple@nvidia.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Eugenio =?iso-8859-1?Q?P=E9rez?= <eperezma@redhat.com>,
 Zi Yan <ziy@nvidia.com>, Josef Bacik <josef@toxicpanda.com>,
 Gregory Price <gourry@gourry.net>, Arnd Bergmann <arnd@arndb.de>,
 Dave Kleikamp <shaggy@kernel.org>, virtualization@lists.linux.dev,
 Nicholas Piggin <npiggin@gmail.com>,
 Jerrin Shaji George <jerrin.shaji-george@broadcom.com>,
 kernel_team@skhynix.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Oscar Salvador <osalvador@suse.de>,
 Joshua Hahn <joshua.hahnjy@gmail.com>, Christian Brauner <brauner@kernel.org>,
 Chris Mason <clm@fb.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Muchun Song <muchun.song@linux.dev>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Aug 11, 2025 at 04:39:48PM +0200, David Hildenbrand wrote:
> At this point MIGRATEPAGE_SUCCESS is misnamed for all folio users,
> and now that we remove MIGRATEPAGE_UNMAP, it's really the only "success"
> return value that the code uses and expects.
> 
> Let's just get rid of MIGRATEPAGE_SUCCESS completely and just use "0"
> for success.
> 
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  arch/powerpc/platforms/pseries/cmm.c |  2 +-
>  drivers/misc/vmw_balloon.c           |  4 +--
>  drivers/virtio/virtio_balloon.c      |  2 +-
>  fs/aio.c                             |  2 +-
>  fs/btrfs/inode.c                     |  4 +--
>  fs/hugetlbfs/inode.c                 |  4 +--
>  fs/jfs/jfs_metapage.c                |  8 +++---
>  include/linux/migrate.h              | 10 +------
>  mm/migrate.c                         | 40 +++++++++++++---------------
>  mm/migrate_device.c                  |  2 +-
>  mm/zsmalloc.c                        |  4 +--
>  11 files changed, 36 insertions(+), 46 deletions(-)
> 
> diff --git a/arch/powerpc/platforms/pseries/cmm.c b/arch/powerpc/platforms/pseries/cmm.c
> index 5e0a718d1be7b..0823fa2da1516 100644
> --- a/arch/powerpc/platforms/pseries/cmm.c
> +++ b/arch/powerpc/platforms/pseries/cmm.c
> @@ -545,7 +545,7 @@ static int cmm_migratepage(struct balloon_dev_info *b_dev_info,
>         /* balloon page list reference */
>         put_page(page);
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;

Yeah.  The unnecessary thing has been kept.  Looks better to me.

Reviewed-by: Byungchul Park <byungchul@sk.com>

	Byungchul

>  static void cmm_balloon_compaction_init(void)
> diff --git a/drivers/misc/vmw_balloon.c b/drivers/misc/vmw_balloon.c
> index 6653fc53c951c..6df51ee8db621 100644
> --- a/drivers/misc/vmw_balloon.c
> +++ b/drivers/misc/vmw_balloon.c
> @@ -1806,7 +1806,7 @@ static int vmballoon_migratepage(struct balloon_dev_info *b_dev_info,
>                  * the list after acquiring the lock.
>                  */
>                 get_page(newpage);
> -               ret = MIGRATEPAGE_SUCCESS;
> +               ret = 0;
>         }
> 
>         /* Update the balloon list under the @pages_lock */
> @@ -1817,7 +1817,7 @@ static int vmballoon_migratepage(struct balloon_dev_info *b_dev_info,
>          * If we succeed just insert it to the list and update the statistics
>          * under the lock.
>          */
> -       if (ret == MIGRATEPAGE_SUCCESS) {
> +       if (!ret) {
>                 balloon_page_insert(&b->b_dev_info, newpage);
>                 __count_vm_event(BALLOON_MIGRATE);
>         }
> diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
> index e299e18346a30..eae65136cdfb5 100644
> --- a/drivers/virtio/virtio_balloon.c
> +++ b/drivers/virtio/virtio_balloon.c
> @@ -875,7 +875,7 @@ static int virtballoon_migratepage(struct balloon_dev_info *vb_dev_info,
>         balloon_page_finalize(page);
>         put_page(page); /* balloon reference */
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
>  #endif /* CONFIG_BALLOON_COMPACTION */
> 
> diff --git a/fs/aio.c b/fs/aio.c
> index 7fc7b6221312c..059e03cfa088c 100644
> --- a/fs/aio.c
> +++ b/fs/aio.c
> @@ -445,7 +445,7 @@ static int aio_migrate_folio(struct address_space *mapping, struct folio *dst,
>         folio_get(dst);
> 
>         rc = folio_migrate_mapping(mapping, dst, src, 1);
> -       if (rc != MIGRATEPAGE_SUCCESS) {
> +       if (rc) {
>                 folio_put(dst);
>                 goto out_unlock;
>         }
> diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
> index b77dd22b8cdbe..1d64fee6f59e6 100644
> --- a/fs/btrfs/inode.c
> +++ b/fs/btrfs/inode.c
> @@ -7411,7 +7411,7 @@ static int btrfs_migrate_folio(struct address_space *mapping,
>  {
>         int ret = filemap_migrate_folio(mapping, dst, src, mode);
> 
> -       if (ret != MIGRATEPAGE_SUCCESS)
> +       if (ret)
>                 return ret;
> 
>         if (folio_test_ordered(src)) {
> @@ -7419,7 +7419,7 @@ static int btrfs_migrate_folio(struct address_space *mapping,
>                 folio_set_ordered(dst);
>         }
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
>  #else
>  #define btrfs_migrate_folio NULL
> diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
> index 09d4baef29cf9..34d496a2b7de6 100644
> --- a/fs/hugetlbfs/inode.c
> +++ b/fs/hugetlbfs/inode.c
> @@ -1052,7 +1052,7 @@ static int hugetlbfs_migrate_folio(struct address_space *mapping,
>         int rc;
> 
>         rc = migrate_huge_page_move_mapping(mapping, dst, src);
> -       if (rc != MIGRATEPAGE_SUCCESS)
> +       if (rc)
>                 return rc;
> 
>         if (hugetlb_folio_subpool(src)) {
> @@ -1063,7 +1063,7 @@ static int hugetlbfs_migrate_folio(struct address_space *mapping,
> 
>         folio_migrate_flags(dst, src);
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
>  #else
>  #define hugetlbfs_migrate_folio NULL
> diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
> index b98cf3bb6c1fe..871cf4fb36366 100644
> --- a/fs/jfs/jfs_metapage.c
> +++ b/fs/jfs/jfs_metapage.c
> @@ -169,7 +169,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
>         }
> 
>         rc = filemap_migrate_folio(mapping, dst, src, mode);
> -       if (rc != MIGRATEPAGE_SUCCESS)
> +       if (rc)
>                 return rc;
> 
>         for (i = 0; i < MPS_PER_PAGE; i++) {
> @@ -199,7 +199,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
>                 }
>         }
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
>  #endif /* CONFIG_MIGRATION */
> 
> @@ -242,7 +242,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
>                 return -EAGAIN;
> 
>         rc = filemap_migrate_folio(mapping, dst, src, mode);
> -       if (rc != MIGRATEPAGE_SUCCESS)
> +       if (rc)
>                 return rc;
> 
>         if (unlikely(insert_metapage(dst, mp)))
> @@ -253,7 +253,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
>         mp->folio = dst;
>         remove_metapage(src, mp);
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
>  #endif /* CONFIG_MIGRATION */
> 
> diff --git a/include/linux/migrate.h b/include/linux/migrate.h
> index 40f2b5a37efbb..02f11704fb686 100644
> --- a/include/linux/migrate.h
> +++ b/include/linux/migrate.h
> @@ -12,13 +12,6 @@ typedef void free_folio_t(struct folio *folio, unsigned long private);
> 
>  struct migration_target_control;
> 
> -/*
> - * Return values from addresss_space_operations.migratepage():
> - * - negative errno on page migration failure;
> - * - zero on page migration success;
> - */
> -#define MIGRATEPAGE_SUCCESS            0
> -
>  /**
>   * struct movable_operations - Driver page migration
>   * @isolate_page:
> @@ -34,8 +27,7 @@ struct migration_target_control;
>   * @src page.  The driver should copy the contents of the
>   * @src page to the @dst page and set up the fields of @dst page.
>   * Both pages are locked.
> - * If page migration is successful, the driver should
> - * return MIGRATEPAGE_SUCCESS.
> + * If page migration is successful, the driver should return 0.
>   * If the driver cannot migrate the page at the moment, it can return
>   * -EAGAIN.  The VM interprets this as a temporary migration failure and
>   * will retry it later.  Any other error value is a permanent migration
> diff --git a/mm/migrate.c b/mm/migrate.c
> index e9dacf1028dc7..2db4974178e6a 100644
> --- a/mm/migrate.c
> +++ b/mm/migrate.c
> @@ -209,18 +209,17 @@ static void putback_movable_ops_page(struct page *page)
>   * src and dst are also released by migration core. These pages will not be
>   * folios in the future, so that must be reworked.
>   *
> - * Returns MIGRATEPAGE_SUCCESS on success, otherwise a negative error
> - * code.
> + * Returns 0 on success, otherwise a negative error code.
>   */
>  static int migrate_movable_ops_page(struct page *dst, struct page *src,
>                 enum migrate_mode mode)
>  {
> -       int rc = MIGRATEPAGE_SUCCESS;
> +       int rc;
> 
>         VM_WARN_ON_ONCE_PAGE(!page_has_movable_ops(src), src);
>         VM_WARN_ON_ONCE_PAGE(!PageMovableOpsIsolated(src), src);
>         rc = page_movable_ops(src)->migrate_page(dst, src, mode);
> -       if (rc == MIGRATEPAGE_SUCCESS)
> +       if (!rc)
>                 ClearPageMovableOpsIsolated(src);
>         return rc;
>  }
> @@ -565,7 +564,7 @@ static int __folio_migrate_mapping(struct address_space *mapping,
>                 if (folio_test_swapbacked(folio))
>                         __folio_set_swapbacked(newfolio);
> 
> -               return MIGRATEPAGE_SUCCESS;
> +               return 0;
>         }
> 
>         oldzone = folio_zone(folio);
> @@ -666,7 +665,7 @@ static int __folio_migrate_mapping(struct address_space *mapping,
>         }
>         local_irq_enable();
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
> 
>  int folio_migrate_mapping(struct address_space *mapping,
> @@ -715,7 +714,7 @@ int migrate_huge_page_move_mapping(struct address_space *mapping,
> 
>         xas_unlock_irq(&xas);
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
> 
>  /*
> @@ -831,14 +830,14 @@ static int __migrate_folio(struct address_space *mapping, struct folio *dst,
>                 return rc;
> 
>         rc = __folio_migrate_mapping(mapping, dst, src, expected_count);
> -       if (rc != MIGRATEPAGE_SUCCESS)
> +       if (rc)
>                 return rc;
> 
>         if (src_private)
>                 folio_attach_private(dst, folio_detach_private(src));
> 
>         folio_migrate_flags(dst, src);
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
> 
>  /**
> @@ -945,7 +944,7 @@ static int __buffer_migrate_folio(struct address_space *mapping,
>         }
> 
>         rc = filemap_migrate_folio(mapping, dst, src, mode);
> -       if (rc != MIGRATEPAGE_SUCCESS)
> +       if (rc)
>                 goto unlock_buffers;
> 
>         bh = head;
> @@ -1049,7 +1048,7 @@ static int fallback_migrate_folio(struct address_space *mapping,
>   *
>   * Return value:
>   *   < 0 - error code
> - *  MIGRATEPAGE_SUCCESS - success
> + *     0 - success
>   */
>  static int move_to_new_folio(struct folio *dst, struct folio *src,
>                                 enum migrate_mode mode)
> @@ -1077,7 +1076,7 @@ static int move_to_new_folio(struct folio *dst, struct folio *src,
>         else
>                 rc = fallback_migrate_folio(mapping, dst, src, mode);
> 
> -       if (rc == MIGRATEPAGE_SUCCESS) {
> +       if (!rc) {
>                 /*
>                  * For pagecache folios, src->mapping must be cleared before src
>                  * is freed. Anonymous folios must stay anonymous until freed.
> @@ -1427,7 +1426,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
>         if (folio_ref_count(src) == 1) {
>                 /* page was freed from under us. So we are done. */
>                 folio_putback_hugetlb(src);
> -               return MIGRATEPAGE_SUCCESS;
> +               return 0;
>         }
> 
>         dst = get_new_folio(src, private);
> @@ -1490,8 +1489,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
>                 rc = move_to_new_folio(dst, src, mode);
> 
>         if (page_was_mapped)
> -               remove_migration_ptes(src,
> -                       rc == MIGRATEPAGE_SUCCESS ? dst : src, 0);
> +               remove_migration_ptes(src, !rc ? dst : src, 0);
> 
>  unlock_put_anon:
>         folio_unlock(dst);
> @@ -1500,7 +1498,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
>         if (anon_vma)
>                 put_anon_vma(anon_vma);
> 
> -       if (rc == MIGRATEPAGE_SUCCESS) {
> +       if (!rc) {
>                 move_hugetlb_state(src, dst, reason);
>                 put_new_folio = NULL;
>         }
> @@ -1508,7 +1506,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
>  out_unlock:
>         folio_unlock(src);
>  out:
> -       if (rc == MIGRATEPAGE_SUCCESS)
> +       if (!rc)
>                 folio_putback_hugetlb(src);
>         else if (rc != -EAGAIN)
>                 list_move_tail(&src->lru, ret);
> @@ -1618,7 +1616,7 @@ static int migrate_hugetlbs(struct list_head *from, new_folio_t get_new_folio,
>                                                       reason, ret_folios);
>                         /*
>                          * The rules are:
> -                        *      Success: hugetlb folio will be put back
> +                        *      0: hugetlb folio will be put back
>                          *      -EAGAIN: stay on the from list
>                          *      -ENOMEM: stay on the from list
>                          *      Other errno: put on ret_folios list
> @@ -1635,7 +1633,7 @@ static int migrate_hugetlbs(struct list_head *from, new_folio_t get_new_folio,
>                                 retry++;
>                                 nr_retry_pages += nr_pages;
>                                 break;
> -                       case MIGRATEPAGE_SUCCESS:
> +                       case 0:
>                                 stats->nr_succeeded += nr_pages;
>                                 break;
>                         default:
> @@ -1689,7 +1687,7 @@ static void migrate_folios_move(struct list_head *src_folios,
>                                 reason, ret_folios);
>                 /*
>                  * The rules are:
> -                *      Success: folio will be freed
> +                *      0: folio will be freed
>                  *      -EAGAIN: stay on the unmap_folios list
>                  *      Other errno: put on ret_folios list
>                  */
> @@ -1699,7 +1697,7 @@ static void migrate_folios_move(struct list_head *src_folios,
>                         *thp_retry += is_thp;
>                         *nr_retry_pages += nr_pages;
>                         break;
> -               case MIGRATEPAGE_SUCCESS:
> +               case 0:
>                         stats->nr_succeeded += nr_pages;
>                         stats->nr_thp_succeeded += is_thp;
>                         break;
> diff --git a/mm/migrate_device.c b/mm/migrate_device.c
> index e05e14d6eacdb..abd9f6850db65 100644
> --- a/mm/migrate_device.c
> +++ b/mm/migrate_device.c
> @@ -778,7 +778,7 @@ static void __migrate_device_pages(unsigned long *src_pfns,
>                 if (migrate && migrate->fault_page == page)
>                         extra_cnt = 1;
>                 r = folio_migrate_mapping(mapping, newfolio, folio, extra_cnt);
> -               if (r != MIGRATEPAGE_SUCCESS)
> +               if (r)
>                         src_pfns[i] &= ~MIGRATE_PFN_MIGRATE;
>                 else
>                         folio_migrate_flags(newfolio, folio);
> diff --git a/mm/zsmalloc.c b/mm/zsmalloc.c
> index 2c5e56a653544..84eb91d47a226 100644
> --- a/mm/zsmalloc.c
> +++ b/mm/zsmalloc.c
> @@ -1746,7 +1746,7 @@ static int zs_page_migrate(struct page *newpage, struct page *page,
>          * instead.
>          */
>         if (!zpdesc->zspage)
> -               return MIGRATEPAGE_SUCCESS;
> +               return 0;
> 
>         /* The page is locked, so this pointer must remain valid */
>         zspage = get_zspage(zpdesc);
> @@ -1813,7 +1813,7 @@ static int zs_page_migrate(struct page *newpage, struct page *page,
>         reset_zpdesc(zpdesc);
>         zpdesc_put(zpdesc);
> 
> -       return MIGRATEPAGE_SUCCESS;
> +       return 0;
>  }
> 
>  static void zs_page_putback(struct page *page)
> --
> 2.50.1
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
