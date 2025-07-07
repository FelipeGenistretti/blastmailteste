<x-app-layout>
    <x-slot name="header">
        <x-h2>
            {{__('Email List')}}
        </x-h2>
    </x-slot>
    <x-card>
        @forelse($EmailList as $list)
            <!-- Aqui deve entrar o conteúdo para cada $list -->
            @empty
                <div class="flex justify-center">
                    <a href="{{ route('email-list.create') }}" 
                        class="inline-block px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700 transition">
                        {{ __('Create your first email list') }}
                    </a>
                </div>
            @endforelse
    </x-card>
</x-app-layout>
