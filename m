Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A01D73FA5F
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Jun 2023 12:43:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qE69s-0006uQ-4Q;
	Tue, 27 Jun 2023 10:42:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qE69o-0006uK-5n
 for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Jun 2023 10:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b6mr6IUj1sLKRFPC3AWOY5M8vnn/8M/C9oYU60Dvbts=; b=ZG2026H/aQX5KgtQlXRGzmngwx
 58P0SqaxM2qtXuC1W9FzF78mrPKmYZemo3nZFv1H5C6YIXmkoq20BmtQst3qPSAf2EXsNK8RsWW0F
 +FNHk7b6QJ9sOYkbsLZsueQFKmNlvz5cG4ELD1Cva95SNkWeWNpIgChgwQjCrJsympk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b6mr6IUj1sLKRFPC3AWOY5M8vnn/8M/C9oYU60Dvbts=; b=d30EnJR8/N1WOtPfNJCJ3u6ykP
 5I7M6AhOoG/p6TjFDJwH2xUztnPny/6YCVM359m1MCP5oOmGFMBHd/OSdujaCUMEI4b3jMkqUpeLr
 2A5sbh6J1DbjOK/OLD52vrGTaEda1J1pdWZ/BEiuCNl1WsBnH7vBtIzGy3Z00ArvL/7g=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qE69n-00GGfl-Lm for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Jun 2023 10:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b6mr6IUj1sLKRFPC3AWOY5M8vnn/8M/C9oYU60Dvbts=; b=dR9ol1QSKJfK37McjDOz41Gsv0
 neGIJPSNJah6e0ntbkCkVhdo+dfy5MXj/zjGGmjB2fyUvBM9b/AMTEKfA8Pt+7XLM/XzB6zWCReeP
 uyIxa/yfYC4zQTIAsvKh0chKBxbXcFI+vdnleBudNHab8ZNbAdX1So/1EdquIwvaAcZcrLHASDFFH
 Bgx22cUwiPmM6M0cg9q1wInlsxibkDPYsMFFGB/z+HEly1KdnZVd3ZP6Yz2mXhxHZfdDWFlJGn6EX
 3jXcNSCSDRg9f4x6763Kx6/okBhfM5G3J6hcvHZzNMQt7CrwB0oYOe8j5rO31GiAgYFnLFKHGzP9q
 yE0NBpmA==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qE69V-00GFnB-4Y; Tue, 27 Jun 2023 10:42:29 +0000
Date: Tue, 27 Jun 2023 10:42:29 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Steve French <smfrench@gmail.com>
Message-ID: <ZJq9FcdFLQIZ8cja@gallifrey>
References: <ZJhPIYSUzBpuqosh@gallifrey>
 <25821273-d391-1502-ff8a-07ea7a59c8f3@oracle.com>
 <CAH2r5mvwZnd+S8CmZGQSdtnAWD45YjFx-1j0EaFBR3Qn-SjHEA@mail.gmail.com>
 <ZJov5VNakxNXU0Mk@gallifrey>
 <CAH2r5mvEWeSOM=NYrxSG1EZ1py-DSkOrwEyh+_L-KuFLVWktQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH2r5mvEWeSOM=NYrxSG1EZ1py-DSkOrwEyh+_L-KuFLVWktQw@mail.gmail.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-21-amd64 (x86_64)
X-Uptime: 10:42:00 up 99 days, 21:16, 1 user, load average: 0.08, 0.04, 0.01
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  * Steve French (smfrench@gmail.com) wrote: > On Mon, Jun 26,
    2023 at 7:40 PM Dr. David Alan Gilbert <linux@treblig.org> > wrote: > >
    > * Steve French (smfrench@gmail.com) wrote: > > > probably is lo [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qE69n-00GGfl-Lm
Subject: Re: [Jfs-discussion] Duplicate unicode tables in smb/cifs/jfs
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, sfrench@samba.org, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

KiBTdGV2ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWlsLmNvbSkgd3JvdGU6Cj4gT24gTW9uLCBKdW4g
MjYsIDIwMjMgYXQgNzo0MOKAr1BNIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgPGxpbnV4QHRyZWJs
aWcub3JnPgo+IHdyb3RlOgo+IAo+ID4gKiBTdGV2ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWlsLmNv
bSkgd3JvdGU6Cj4gPiA+IHByb2JhYmx5IGlzIGxvdyByaXNrIHRvIG1ha2UgdGhlIGtzbWJkL2Np
ZnMgKHNlcnZlciBhbmQgY2xpZW50KSBjb2RlCj4gPiBjb21tb24KPiA+ID4gZm9yIHRoaXMKPiA+
Cj4gPiBJJ20gdXAgZm9yIHRyeWluZyB0byBkbyB0aGF0IG1vZDsgZG8geW91IGhhdmUgYSBmZWVs
IG9mIHRoZSBiZXN0IHdheT8KPiA+IEkgZ3Vlc3MgdGhpcyBpcyB0d28gY29waWVzIHRvIGF2b2lk
IHN5bWJvbCBjbGFzaGVzIGlmIGJvdGggdGhlIHNlcnZlcgo+ID4gYW5kIGNsaWVudHMgYXJlIGJ1
aWx0L2xvYWRlZCBvbiB0aGUgc2FtZSBrZXJuZWw/Cj4gPgo+IAo+IEZpcnN0IHN0ZXAgd291bGQg
YmUgdG8gbW92ZSBjb21tb24gVW5pY29kZS9VQ1MtMiBoZWFkZXIgZGVmaW5pdGlvbnMgZnJvbQo+
IGZzL3NtYi9jbGllbnQKPiBhbmQgZnMvc21iL3NlcnZlciB0byBmcy9zbWIvY29tbW9uCj4gCj4g
U2Vjb25kIHN0dWZmIGNvdWxkIGJlIGhhdmluZyBhIGNvbW1vbiBoZWxwZXIgbW9kdWxlIGluIGZz
L3NtYi9jb21tb24KPiBzaW1pbGFyIHRvCj4gZnMvc21iL2NvbW1vbi9jaWZzX21kNC5rbwoKT0ss
IGxldCBtZSBoYXZlIGEgY3JhY2sgYXQgdGhhdCBhbmQgc2VlIHdoZXJlIEkgZ2V0IHRvLgoKRGF2
ZQoKPiAKPiAKPiA+IEkgZ3Vlc3MgdGhlIGNsZWFuIHdheSBpcyB0byBtYWtlIHRoaXMgYSBzZXBh
cmF0ZSAuYy9tb2R1bGUgdGhhdCB0aGUKPiA+IG90aGVycyBkZXBlbmQgb24gYW5kIGh0ZW4geW91
IGhhdmUgYSBuaWNlIHNpbmdsZSBjb3B5IGluIHRoZSBiaW5hcnkKPiA+IGFzIHdlbGwgYXMgdGhl
IHNvdXJjZS4KPiA+Cj4gPiBUaGUgc2hvcnRlciBoYWNrIHRoYXQgYXQgbGVhc3QgYXZvaWRzIHRo
ZSBzb3VyY2UgZHVwZSB3b3VsZCBiZSB0bwo+ID4gY2hhbmdlIHRoZSBkZWNsYXJhdGlvbnMgaW4g
dGhlIHVuaXVwci5oIGZpbGVzIHRvIGEgI2RlZmluZSB0aGF0IHRoZW4KPiA+IGluc3RhbnRpYXRl
cyBpdCB3aXRoIGRpZmZlcmVudCBuYW1lcyBpbiB0aGUgcGxhY2UgdGhvc2UgYXJlICNpbmNsdWRl
ZC4KPiA+IFlvdSdkIHdhbnQgdG8gbW92ZSB0aGUgdW5pdXByLmggdXAgc29tZXdoZXJlLCB0byBo
bW0gZnMvdW5pdXByLmggPwo+ID4KPiA+IChJbmNpZGVudGFsbHksIEkgdGhpbmsgdGhlIFVOSVVQ
Ul9OT0xPV0VSIGlzIGFsd2F5cyBkZWZpbmVkCj4gPiBzbyB0aGF0IHdob2xlIGNodW5rIGNhbiBn
byBpbiBib3RoIG9mIHRoZW0pLgo+ID4KPiA+IEkgZ3Vlc3MgdGhlIG5leHQgbGV2ZWwgd291bGQg
YmUgdHJ5aW5nIHRvIG1lcmdlIHBhcnRzIG9mIHNlcnZlci9jbGllbnQKPiA+IHVuaWNvZGUuW2No
XSAtIGJ1dCBJIHdhcyBqdXN0IGV5ZWluZyB1cCB0aGlzIHBhcnRpY3VsYXJseSBzaW1wbGUgZHVw
ZSBpbgo+ID4gdGhhdCBvZGQgdW5pdXByLmguCj4gPgo+ID4gPiAoYW5kIGxlYXZlIHRoZSBKRlMg
Y29kZSBhbG9uZSBhcyBEYXZlIEtsZWlrYW1wIHN1Z2dlc3RzKQo+ID4KPiA+IFdlbGwgaG1tOyBt
eSByZWFkaW5nIGlzIHRoZSB0YWJsZXMgdGhhdCBKRlMgdXNlcyBhcmUgKmlkZW50aWNhbCoKPiA+
IHRvIHRoZXNlOyBzbyBpZiB0aGlzIGhlYWRlciB3YXMgc29tZXdoZXJlIG91dHNpZGUgb2YgZnMv
c21iIGl0IGNvdWxkCj4gPiBwcm9iYWJseSAjaW5jbHVkZSBpdCBhbmQganVzdCB1c2UgdGhlIHNh
bWUgdGFibGUsIHdpdGggYQo+ID4gbm8tYmluYXJ5LWNoYW5nZS4KPiA+Cj4gPiBEYXZlCj4gPgo+
ID4gPiBPbiBNb24sIEp1biAyNiwgMjAyMyBhdCAxMjowM+KAr1BNIERhdmUgS2xlaWthbXAgPGRh
dmUua2xlaWthbXBAb3JhY2xlLmNvbQo+ID4gPgo+ID4gPiB3cm90ZToKPiA+ID4KPiA+ID4gPiBP
biA2LzI1LzIzIDk6MjhBTSwgRHIuIERhdmlkIEFsYW4gR2lsYmVydCB3cm90ZToKPiA+ID4gPiA+
IEhpIEFsbCwKPiA+ID4gPiA+ICAgIEkganVzdCB0cmlwcGVkIG92ZXIgdGhyZWUgc2V0cyBvZiBk
dXBsaWNhdGVkIHVuaWNvZGUgdGFibGVzIGFuZAo+ID4gPiA+ID4gd29uZGVyZWQgaWYgYW55b25l
IGhhZCB0cmllZCB0byByYXRpb25hbGlzZSB0aGVtOgo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgIFRo
ZSBwYWlyIG9mOgo+ID4gPiA+ID4gICAgIC4vZnMvc21iL3NlcnZlci91bml1cHIuaAo+ID4gPiA+
ID4gICAgIC4vZnMvc21iL2NsaWVudC9jaWZzX3VuaXVwci5oCj4gPiA+ID4gPgo+ID4gPiA+ID4g
ICAgIGFyZSBpZGVudGljYWwgZXhjZXB0IGZvciBmb3JtYXR0aW5nLgo+ID4gPiA+ID4KPiA+ID4g
PiA+IC4vZnMvamZzL2pmc191bml1cHIuYywKPiA+ID4gPiA+ICAgIGFuZCBJIHRoaW5rIHRoaXMg
aXMgdGhlIHNhbWUgd2l0aCBzb21lIGNoYW5nZSBpbiB2YXJpYWJsZSBuYW1lLgo+ID4gPiA+Cj4g
PiA+ID4gIEZyb20gSkZTJ3MgcG9pbnQgb2YgdmlldywgSSB3b25kZXIgaG93IHJlbGV2YW50IGFu
eSBvZiB0aGlzIGNvZGUgaXMuCj4gPiA+ID4gVGhlIExpbnV4IHBvcnQgb2YgSkZTIG9yaWdpbmFs
bHkgd2FzIGludGVyZXN0ZWQgaW4gY29tcGF0aWJpbGl0eSB3aXRoCj4gPiA+ID4gT1MvMiwgd2hp
Y2ggaGFkIGNhc2UtaW5zZW5zaXRpdmUgZmlsZSBuYW1lcy4gKENhc2UtcHJlc2VydmluZywgaWYg
SQo+ID4gPiA+IHJlbWVtYmVyIGNvcnJlY3RseSwgYnV0IG5hbWVzIHdvdWxkIG1hdGNoIGluIGEg
Y2FzZS1pbnNlbnNpdGl2ZQo+ID4gbWFubmVyLikKPiA+ID4gPgo+ID4gPiA+IEkgd291bGQgYmUg
c3VycHJpc2VkIGlmIGFueW9uZSBjYXJlcyBhYm91dCB0aGlzIGZlYXR1cmUgYW55bW9yZS4KPiA+
IFdpdGhvdXQKPiA+ID4gPiBhIEpGU19PUzIgZmxhZyBzZXQgaW4gdGhlIHN1cGVyYmxvY2ssIG5v
bmUgb2YgdGhlIGNhc2UtY29udmVyc2lvbiBjb2RlCj4gPiA+ID4gY29tZXMgaW50byBwbGF5Lgo+
ID4gPiA+Cj4gPiA+ID4gSSBhc3N1bWUgU01CIGNhcmVzIG1vcmUgYWJvdXQgdGhpcyBhbmQgaWYg
U3RldmUgaGFzIGFuIG9waW5pb24gb24gaG93Cj4gPiB0bwo+ID4gPiA+IGFkZHJlc3MgdGhpcywg
SSdkIGJlIGhhcHB5IHRvIGZvbGxvdyBoaXMgbGVhZC4gUHJvYmFibHkgYmV0dGVyIHRoYW4KPiA+
ID4gPiByaXBwaW5nIGZ1bmN0aW9uIG91dCBvZiBKRlMgdGhhdCBjb3VsZCBicmVhayBzb21lIHVz
ZXIgdGhhdCBJJ20gbm90Cj4gPiA+ID4gYXdhcmUgb2YuCj4gPiA+ID4KPiA+ID4gPiBTaGFnZ3kK
PiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+IChJJ20gZ3Vlc3NpbmcgdGhlIHNhbWUgdGhpbmcg
aXMgaW1wbGVtZW50ZWQgaW4gYSBidW5jaCBvZgo+ID4gPiA+ID4gb3RoZXIgcGxhY2VzIGFzIHdl
bGwgaW4gYSBkaWZmZXJlbnQgd2F5KQo+ID4gPiA+ID4KPiA+ID4gPiA+IFdvdWxkIGl0IG1ha2Ug
c2Vuc2UgdG8gc3dpbmcgZnMvc21iL3NlcnZlci91bml1cHIuaCB1cCB0bwo+ID4gPiA+ID4gaG1t
LCBtYXliZSBmcy91bml1cHIuaCwgcmVtb3ZlIGFueSBvZiB0aGUgY2lmc18gcHJlZml4ZXMKPiA+
ID4gPiA+IGFuZCB0aGVuIHVzZSB0aGUgc2FtZSBpbmNsdWRlIGluIGFsbCAzIHBsYWNlcz8KPiA+
ID4gPiA+Cj4gPiA+ID4gPiBNYXliZSB0aGVuIGxhdGVyIGxvb2sgYXQgdXNpbmcgc29tZSBvZiB0
aGUgbmxzIGNvZGU/Cj4gPiA+ID4gPgo+ID4gPiA+ID4gRGF2ZSAod2hvIGp1c3QgdHJpcHBlZCBv
dmVyIHRoaXMgc3R1ZmYpCj4gPiA+ID4gPgo+ID4gPiA+Cj4gPiA+Cj4gPiA+Cj4gPiA+IC0tCj4g
PiA+IFRoYW5rcywKPiA+ID4KPiA+ID4gU3RldmUKPiA+IC0tCj4gPiAgLS0tLS1PcGVuIHVwIHlv
dXIgZXllcywgb3BlbiB1cCB5b3VyIG1pbmQsIG9wZW4gdXAgeW91ciBjb2RlIC0tLS0tLS0KPiA+
IC8gRHIuIERhdmlkIEFsYW4gR2lsYmVydCAgICB8ICAgICAgIFJ1bm5pbmcgR05VL0xpbnV4ICAg
ICAgIHwgSGFwcHkgIFwKPiA+IFwgICAgICAgIGRhdmUgQCB0cmVibGlnLm9yZyB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgSW4gSGV4IC8KPiA+ICBcIF9fX19fX19fX19fX19fX19f
X19fX19fX198X19fX18gaHR0cDovL3d3dy50cmVibGlnLm9yZyAgIHxfX19fX19fLwo+ID4KPiAK
PiAKPiAtLSAKPiBUaGFua3MsCj4gCj4gU3RldmUKLS0gCiAtLS0tLU9wZW4gdXAgeW91ciBleWVz
LCBvcGVuIHVwIHlvdXIgbWluZCwgb3BlbiB1cCB5b3VyIGNvZGUgLS0tLS0tLSAgIAovIERyLiBE
YXZpZCBBbGFuIEdpbGJlcnQgICAgfCAgICAgICBSdW5uaW5nIEdOVS9MaW51eCAgICAgICB8IEhh
cHB5ICBcIApcICAgICAgICBkYXZlIEAgdHJlYmxpZy5vcmcgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IEluIEhleCAvCiBcIF9fX19fX19fX19fX19fX19fX19fX19fX198X19fX18g
aHR0cDovL3d3dy50cmVibGlnLm9yZyAgIHxfX19fX19fLwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApK
ZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
